//
//  ViewController.m
//  FirstMapDemo
//
//  Created by JETS Mobile Lab - 5 on 4/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_myMapView setDelegate:self];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("regionWillChangeAnimated\n");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("regionDidChangeAnimated\n");
    
}

@end
