//
//  Friend.m
//  TableViewDemo
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "Friend.h"

@implementation Friend
-(id)initwithName:(NSString*)name  andPhone:(NSString*)phone  andAge:(NSString*)age andEmail:(NSString*)email{
    if(self==[super init]){
        self.name=name;
        self.phone=phone;
        self.age=age;
        self.email=email;
        
    }
    return self;
}
@end
