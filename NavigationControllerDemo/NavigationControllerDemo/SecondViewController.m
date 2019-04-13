//
//  SecondViewController.m
//  NavigationControllerDemo
//
//  Created by JETS Mobile Lab - 5 on 4/13/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *secondViewLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_secondViewLabel setText: _name];
    UIBarButtonItem *barButton=[[UIBarButtonItem alloc]initWithTitle:@"DONE" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    UINavigationItem *item=self.navigationItem;
    [item setRightBarButtonItem:barButton];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) done{
    [self.protocol clearText];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
