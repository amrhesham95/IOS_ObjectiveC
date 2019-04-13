//
//  ViewController.m
//  TextNumberValidation
//
//  Created by JETS Mobile Lab - 5 on 4/11/19.
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


- (IBAction)numberBtn:(UIButton *)sender {
    NSNumberFormatter *formatter=[NSNumberFormatter new];
    NSNumber *number=[NSNumber new];
    number=[formatter numberFromString:[_textField text]];
    if(number==nil){
        printf("not pure number\n");
    }else{
        printf("pure number\n");
    }
}

- (IBAction)textBtn:(UIButton *)sender {
    NSNumberFormatter *formatter=[NSNumberFormatter new];
    NSNumber *number=[NSNumber new];
    number=[formatter numberFromString:[_textField text]];
    if(number==nil){
        printf("Text\n");
    }else{
        printf("not Text\n");
    }
}

@end
