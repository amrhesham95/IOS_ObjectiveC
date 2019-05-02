//
//  DBManager.h
//  Lab7SingletoneDemo
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBManager : NSObject
+(DBManager*) sharedInstance;
@end

NS_ASSUME_NONNULL_END
