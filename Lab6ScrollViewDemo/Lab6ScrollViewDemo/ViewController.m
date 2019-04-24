//
//  ViewController.m
//  Lab6ScrollViewDemo
//
//  Created by JETS Mobile Lab - 5 on 4/24/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_myScrollView setScrollEnabled:YES];
    [_myScrollView setContentSize:CGSizeMake(500, 1000)];
}


@end
