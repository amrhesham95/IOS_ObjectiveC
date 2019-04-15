//
//  SecondViewController.h
//  TableViewDemo
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"
#import "Friend.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : ViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property Friend *friendObj;
@end

NS_ASSUME_NONNULL_END
