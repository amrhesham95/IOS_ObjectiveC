//
//  ViewController.h
//  Calculator
//
//  Created by Esraa Hassan on 4/14/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
@interface ViewController : UIViewController
@property Calculator *calculator;
@property NSNumberFormatter *	formatter;
@property (weak, nonatomic) IBOutlet UITextField *numOneTF;
@property (weak, nonatomic) IBOutlet UITextField *numTwoTF;
- (IBAction)addBtn:(UIButton *)sender;
- (IBAction)subBtn:(UIButton *)sender;
- (IBAction)mulBtn:(UIButton *)sender;
- (IBAction)divBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@end

