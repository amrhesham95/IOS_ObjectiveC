//
//  ViewController.m
//  IBDemoWithTextField
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


- (IBAction)button:(UIButton *)sender {
    [_myLabel setText:[_textField text]];
    
}
@end
