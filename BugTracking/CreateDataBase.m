//
//  CreateDataBase.m
//  BugTracking
//
//  Created by Fancy on 16/2/22.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "CreateDataBase.h"
#import "sqlite3.h"

@implementation CreateDataBase
{
    sqlite3 *sqlite;


}


- (NSString *)path
{
    NSArray *arr = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *Path = [arr objectAtIndex:0];
    NSString *datapath = [Path stringByAppendingString:DATA_BASE];
    NSLog(@"%@",datapath);
    return datapath;
    

}

- (void)createUserTable
{
    if (sqlite3_open([ [self path] UTF8String], &sqlite) ==SQLITE_OK) {
        NSLog(@"数据库打开成功");
        NSString *sql = @"CREATE TABLE IF NOT EXISTS User(username TEXT PRIMARY KEY , password TEXT NOT NULL ,nickname TEXT NOT NULL, mobile TEXT NOT NULL)";
        char *error;
        if (sqlite3_exec(sqlite, [sql UTF8String], NULL, NULL, &error) == SQLITE_OK) {
            NSLog(@"user表建立成功");
        }
        else
        {
            NSLog(@"user表建立失败");
            sqlite3_close(sqlite);
        
        }
        sqlite3_close(sqlite);
    }
    else
    {
        NSLog(@"数据库打开失败");
        
    
    }



}

@end
