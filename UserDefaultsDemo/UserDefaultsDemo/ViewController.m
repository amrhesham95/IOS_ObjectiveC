//
//  ViewController.m
//  UserDefaultsDemo
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)saveBtn:(UIButton *)sender;
- (IBAction)getBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property NSUserDefaults *defaults;
@end

@implementation ViewController{
    NSUserDefaults *defaults;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    defaults =[NSUserDefaults standardUserDefaults];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)saveBtn:(UIButton *)sender {
    NSString *str=[_myTextField text];
    [defaults setObject:str forKey:@"name"];
    [defaults synchronize];
}

- (IBAction)getBtn:(UIButton *)sender {
    NSString *str=[defaults objectForKey:@"name"];
    [_myLabel setText:str];
    
}
@end
