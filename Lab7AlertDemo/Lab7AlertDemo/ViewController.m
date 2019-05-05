//
//  ViewController.m
//  Lab7AlertDemo
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
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


- (IBAction)alertBtn:(UIButton *)sender {
    UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"hello" message:@"THIS IS AN ALERT!!!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        printf("ok was pressed");
    }];
   
    
    UIAlertAction *cancelAction=[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        printf("cancel was pressed");
    }];
     [alertController addAction:okAction];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
    @end
    
