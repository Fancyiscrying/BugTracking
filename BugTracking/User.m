//
//  User.m
//  BugTracking
//
//  Created by Fancy on 16/2/22.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize username = _username;
@synthesize password = _password;
@synthesize nickname = _nickname;
@synthesize mobile   = _mobile;

- (id)initWithName: (NSString *)username Password: (NSString *)password NickName: (NSString *)nickname Mobile : (NSString *)mobile
{
    self = [ super init];
    if (self) {
        self.username = username;
        self.password = password;
        self.nickname = nickname;
        self.mobile   = mobile;
        
    }
    return self;

}

@end
