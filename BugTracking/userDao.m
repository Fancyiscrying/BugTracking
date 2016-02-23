//
//  userDao.m
//  BugTracking
//
//  Created by Fancy on 16/2/22.
//  Copyright © 2016年 Fancy. All rights reserved.
//
#import "User.h"
#import "userDao.h"
#import "CreateDataBase.h"
#import "sqlite3.h"

@implementation userDao

{
    

    sqlite3 *sqlite;
    NSMutableArray *arr ;
}

#pragma 通过用户名查找用户
- (NSMutableArray *)findUserbyUserName:(NSString *)username
{
    
    arr = [[NSMutableArray alloc] init];
    
    if (sqlite3_open([[CreateDataBase path]UTF8String], &sqlite) ==SQLITE_OK) {
        
        
        NSLog(@"数据库打开成功");
    }
    else
    {
    
        NSLog(@"数据库打开失败");
    }

    sqlite3_stmt *statement;
    
    
    NSString *sql = @"SELECT username,password,nickname,mobile FROM User WHERE username =?";
    
    if (sqlite3_prepare_v2(sqlite, [sql UTF8String], -1, &statement, NULL) ==SQLITE_OK) {
        
        sqlite3_bind_text(statement, 1, [username UTF8String], -1, NULL);
        if (sqlite3_step(statement) == SQLITE_ROW) {
            char *cusername = (char *)sqlite3_column_text(statement, 0);
            NSString *username=[[NSString alloc]initWithUTF8String:cusername];
            char *cpassword = (char *)sqlite3_column_text(statement, 1);
            NSString *password =[[NSString alloc] initWithUTF8String:cpassword];
            char *cnickname = (char *)sqlite3_column_text(statement, 2);
            NSString *nickname =[[NSString alloc] initWithUTF8String:cnickname];
            char *cmobile   = (char *)sqlite3_column_text(statement, 3);
            NSString *mobile = [[NSString alloc] initWithUTF8String:cmobile];
            
            NSLog(@"%@",username);
            NSLog(@"%@",password);
            User *user =[[User alloc] initWithName:username Password:password NickName:nickname Mobile:mobile];
            
            [arr addObject:user];
            NSLog(@"查找数据成功");
            
        }
        
        else
        {
            NSLog(@"查找数据失败");
        
        }
        
    }

    sqlite3_finalize(statement);
    sqlite3_close(sqlite);
    return arr;
}
#pragma 新增用户
- (BOOL)insertUser:(User *)user
{
    
    
    if (sqlite3_open([[CreateDataBase path]UTF8String], &sqlite) == SQLITE_OK) {
        
        NSLog(@"数据库打开成功");
        
    }
else
{

    NSLog(@"数据库打开失败");
    sqlite3_close(sqlite);

}
    
    NSString *sql = @"INSERT OR REPLACE INTO User(username,password,nickname,mobile) VALUES(?,?,?,?)";
    sqlite3_stmt *statement;
    
    if (sqlite3_prepare_v2(sqlite, [sql UTF8String], -1, &statement, NULL) ==SQLITE_OK)
    {
        
        
        sqlite3_bind_text(statement, 1, [user.username UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 2, [user.password UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 3, [user.nickname UTF8String], -1, NULL);
        sqlite3_bind_text(statement, 4, [user.mobile   UTF8String], -1, NULL);
        
        if (sqlite3_step(statement) == SQLITE_DONE) {
            NSLog(@"user表插入数据成功");
        
        }
     else
    {
    NSLog(@"user表插入数据失败");
        return NO;

    }
        
       
        
    }

    else
    {
        NSLog(@" 预处理失败");
    
    }

    
    sqlite3_finalize(statement);
    sqlite3_close(sqlite);
    
    return YES;

}
#pragma 删除用户
- (void)deleteUserbyUserMobile
{



}
#pragma 修改用户
- (void)modifyUser
{




}



@end
