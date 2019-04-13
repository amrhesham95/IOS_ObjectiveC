//
//  ViewController.h
//  FriendsNames
//
//  Created by JETS Mobile Lab - 5 on 4/11/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *names;
    int counter;
}
- (IBAction)leftBtn:(UIButton *)sender;
- (IBAction)rightBtn:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *label;


@end

