//
//  ViewController.m
//  FirstMapDemo
//
//  Created by JETS Mobile Lab - 5 on 4/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"
#import "MADAnnotation.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
- (IBAction)click:(UITapGestureRecognizer *)sender;

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

- (IBAction)click:(UITapGestureRecognizer *)sender {
    CGPoint touchPoint= [sender locationInView:self.myMapView];
    CLLocationCoordinate2D touchCoordinate=[_myMapView convertPoint:touchPoint toCoordinateFromView:self.myMapView];
    MADAnnotation *myAnnotation =[MADAnnotation new];
    myAnnotation.coordinate=touchCoordinate;
    myAnnotation.title=@"MAD";
    myAnnotation.subtitle=@"JETS";
    
    [_myMapView addAnnotation:myAnnotation];
    
}
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    printf("%s",[view.annotation.title UTF8String]);
}
@end
