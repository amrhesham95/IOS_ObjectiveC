//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by JETS Mobile Lab - 5 on 4/13/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)firstViewButton:(UIButton *)sender {
    SecondViewController *secondVC= [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewID"];
    [secondVC setName : [_textField text]];
    secondVC.protocol=self;
    [self.navigationController pushViewController:secondVC animated:YES];
    
}

-(void)clearText{
    [self.textField setText:@""];
}
@end
