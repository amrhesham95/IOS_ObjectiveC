//
//  ViewController.h
//  Lab7NSCoding
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;
@property (weak, nonatomic) IBOutlet UITextField *emailTF;
- (IBAction)saveBtn:(UIButton *)sender;
- (IBAction)getBtn:(UIButton *)sender;


@end

