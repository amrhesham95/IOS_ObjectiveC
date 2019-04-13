//
//  SecondViewController.h
//  NavigationControllerDemo
//
//  Created by JETS Mobile Lab - 5 on 4/13/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property NSString *name;
@property id<ClearTextProtocol> protocol;
@end

NS_ASSUME_NONNULL_END
