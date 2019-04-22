//
//  ViewController.m
//  GestureDemo
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *recRight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColorRight)];
    recRight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:recRight];
    
    UISwipeGestureRecognizer *recLeft=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColorLeft)];
    recLeft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:recLeft];
    
    UISwipeGestureRecognizer *recUp=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColorUp)];
    recUp.direction=UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:recUp];
    
    UISwipeGestureRecognizer *recDown=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColorDown)];
    recDown.direction=UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:recDown];
}
-(void) changeColorRight{
    self.view.backgroundColor =[UIColor redColor];
}

-(void) changeColorLeft{
    self.view.backgroundColor =[UIColor whiteColor];
}

-(void) changeColorUp{
    self.view.backgroundColor =[UIColor blueColor];
}

-(void) changeColorDown{
    self.view.backgroundColor =[UIColor whiteColor];
}


@end
