//
//  ViewController.h
//  NavigationControllerDemo
//
//  Created by JETS Mobile Lab - 5 on 4/13/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextProtocol.h"
@interface ViewController : UIViewController <ClearTextProtocol>
@property (weak, nonatomic) IBOutlet UILabel *firstViewLbael;
- (IBAction)firstViewButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;


@end

