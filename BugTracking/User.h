//
//  User.h
//  BugTracking
//
//  Created by Fancy on 16/2/22.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    
    @private
    NSString *_username;
    NSString *_password;
    NSString *_nickname;
    NSString *_mobile;



}
@property NSString *username;
@property NSString *password;
@property NSString *nickname;
@property NSString *mobile;


- (id)initWithName: (NSString *)username Password: (NSString *)password NickName: (NSString *)nickname Mobile : (NSString *)mobile;
@end
