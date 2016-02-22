//
//  userDao.h
//  BugTracking
//
//  Created by Fancy on 16/2/22.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface userDao : NSObject

- (void)findUserbyUserName;
- (BOOL)insertUser:(User *)user;
- (void)deleteUserbyUserMobile;
- (void)modifyUser;
@end
