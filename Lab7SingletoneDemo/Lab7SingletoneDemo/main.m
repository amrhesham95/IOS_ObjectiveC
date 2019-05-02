//
//  main.m
//  Lab7SingletoneDemo
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DBManager.h"
int main(int argc, const char * argv[]) {
    [DBManager sharedInstance];
    [DBManager sharedInstance];
    [DBManager sharedInstance];
    return 0;
}
