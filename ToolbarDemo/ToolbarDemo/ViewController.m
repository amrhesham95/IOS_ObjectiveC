//
//  ViewController.m
//  ToolbarDemo
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)alertBtn:(UIBarButtonItem *)sender {
    printf("Alert clicked");
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"hello" message:@"this is the message" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",@"CANCEL", nil];
    alert.alertViewStyle=UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
    
}

- (IBAction)trashBtn:(UIBarButtonItem *)sender {
    printf("Trash clicked");
}

- (IBAction)imageBtn:(UIBarButtonItem *)sender {
    printf("camera clicked");
    UIImage*image=[UIImage imageNamed:@"clown.png"];
    [_imgView setImage:image];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *userName;
    NSString *password;
    if(buttonIndex==0){
        userName=[[alertView textFieldAtIndex:0] text];
        password=[[alertView textFieldAtIndex:1] text];
        NSLog(@"%@\t%@",userName,password);
    }else if(buttonIndex==1){
        printf("CANCEL\n");
    }
}

@end
