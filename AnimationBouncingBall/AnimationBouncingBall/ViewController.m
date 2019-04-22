//
//  ViewController.m
//  AnimationBouncingBall
//
//  Created by JETS Mobile Lab - 5 on 4/22/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollisionBehaviorDelegate>
@property (weak, nonatomic) IBOutlet UIView *orangeBall;
@property int flag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    _orangeBall.layer.cornerRadius=25.0;
    _orangeBall.layer.borderColor=[UIColor blackColor].CGColor;
    _orangeBall.layer.borderWidth = 1;
    [self animation];
    _flag=0;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) animation{
    UIGravityBehavior * gravity = [[UIGravityBehavior alloc]initWithItems:@[_orangeBall]];
    [_animator addBehavior:gravity];
    UICollisionBehavior * collision = [[UICollisionBehavior alloc]initWithItems:@[_orangeBall]];
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    collision.collisionDelegate=self;
    [_animator addBehavior:collision];
    UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc]initWithItems:@[_orangeBall]];
    item.elasticity =0.75;
    [_animator addBehavior:item];
    
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier{
    if(_flag==0){
        _orangeBall.layer.backgroundColor=[UIColor redColor].CGColor;
        _flag=1;
    }else{
        _orangeBall.layer.backgroundColor=[UIColor orangeColor].CGColor;
        _flag=0;
    }
}

@end
