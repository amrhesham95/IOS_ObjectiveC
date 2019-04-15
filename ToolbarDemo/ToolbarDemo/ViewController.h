//
//  ViewController.h
//  ToolbarDemo
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
- (IBAction)alertBtn:(UIBarButtonItem *)sender;
- (IBAction)trashBtn:(UIBarButtonItem *)sender;

- (IBAction)imageBtn:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

