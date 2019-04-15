//
//  HistoryViewController.m
//  TabWithNavigation
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "HistoryViewController.h"
#import "AfterHistoryViewController.h"
@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)historyBtn:(UIButton *)sender {
    AfterHistoryViewController *afterVC=[self.storyboard instantiateViewControllerWithIdentifier:@"afterHistoryView"];
    [self.navigationController pushViewController:afterVC animated:YES];
}
@end
