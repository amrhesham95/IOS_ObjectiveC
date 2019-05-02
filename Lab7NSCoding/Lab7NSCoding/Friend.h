//
//  Friend.h
//  Lab7NSCoding
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Friend : NSObject <NSCoding>
@property NSString *name;
@property NSString *phone;
@property int age;
@property NSString *email;
@end

NS_ASSUME_NONNULL_END
