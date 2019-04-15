//
//  Friend.h
//  TableViewDemo
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Friend : NSObject
@property NSString* name;
@property NSString* phone;
@property NSString* age;
@property NSString* email;

-(id)initwithName:(NSString*)name  andPhone:(NSString*)phone  andAge:(NSString*)age andEmail:(NSString*)email;
@end

NS_ASSUME_NONNULL_END
