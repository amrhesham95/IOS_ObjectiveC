//
//  ViewController.h
//  TextNumberValidation
//
//  Created by JETS Mobile Lab - 5 on 4/11/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;


- (IBAction)numberBtn:(UIButton *)sender;
- (IBAction)textBtn:(UIButton *)sender;

@end

