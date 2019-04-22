//
//  ViewController.m
//  PresentViewAndGestureDemo
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property int temp;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *rec=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeMethod)];
    rec.direction=UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:rec];
}

-(void)swipeMethod{
    SecondViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    [self presentViewController:secondVC animated:YES completion:nil];
}


@end
