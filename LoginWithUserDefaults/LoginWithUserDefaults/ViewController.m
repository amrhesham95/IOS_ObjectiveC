//
//  ViewController.m
//  LoginWithUserDefaults
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSUserDefaults *defaults;
}
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
- (IBAction)signinBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"amr" forKey:@"username"];
    [defaults setObject:@"1234" forKey:@"password"];
    
}


- (IBAction)signinBtn:(UIButton *)sender {
    NSString *userName=[_usernameTF text];
    NSString *password=[_passwordTF text];
    NSString *returnedUsername=[defaults objectForKey:@"username"];
    NSString *returnedPassword=[defaults objectForKey:@"password"];
    if([userName isEqualToString:returnedUsername] && [password isEqualToString:returnedPassword]){
        printf("Login success!!\n");
    }else {
        printf("Failed!!\n");
    }
}
@end
