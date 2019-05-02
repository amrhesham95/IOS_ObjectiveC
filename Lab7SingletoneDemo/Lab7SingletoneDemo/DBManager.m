//
//  DBManager.m
//  Lab7SingletoneDemo
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager
static DBManager* sharedInstance;
static dispatch_once_t predicate;
+(DBManager*) sharedInstance{
    //static DBManager* sharedInstance;
    dispatch_once(&predicate,^{
        sharedInstance=[[DBManager alloc]init];
        printf("new object created");
    });
    return sharedInstance;
}
@end
