//
//  ViewController.m
//  FriendsNames
//
//  Created by JETS Mobile Lab - 5 on 4/11/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    names=[NSMutableArray new];
    [names addObject:@"amr"];
    [names addObject:@"kamal"];
    [names addObject:@"gomaa"];
    counter=0;
    [_label setText:names[0]];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)leftBtn:(UIButton *)sender {
    if(counter==0){
        counter=[names count]-1;
    }else{
        counter--;
    }
    [_label setText:names[counter]];
}

- (IBAction)rightBtn:(UIButton *)sender {
        counter++;
        counter=counter%[names count];
        [_label setText:names[counter]];
    
}
@end
