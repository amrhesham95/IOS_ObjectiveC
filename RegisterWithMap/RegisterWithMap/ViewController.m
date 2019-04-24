//
//  ViewController.m
//  RegisterWithMap
//
//  Created by JETS Mobile Lab - 5 on 4/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSUserDefaults *defaults;
}
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
- (IBAction)tabGes:(UITapGestureRecognizer *)sender;
@property CLLocationCoordinate2D touchCoordinate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    defaults=[NSUserDefaults standardUserDefaults];
    _locationManager=[CLLocationManager new];
    [_myMapView setDelegate:self];
    [_locationManager setDelegate:self];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDistanceFilter:kCLHeadingFilterNone];
    [_locationManager startUpdatingLocation];
    [_locationManager requestAlwaysAuthorization];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)tabGes:(UITapGestureRecognizer *)sender {
    CGPoint touchPoint= [sender locationInView:self.myMapView];
     _touchCoordinate=[_myMapView convertPoint:touchPoint toCoordinateFromView:self.myMapView];
    NSNumber *lat=[[NSNumber alloc]initWithDouble:_touchCoordinate.latitude];
    NSNumber *lng=[[NSNumber alloc]initWithDouble:_touchCoordinate.longitude];
    [_latLabel setText:[lat stringValue]];
    [_lngLabel setText:[lng stringValue]];
    printf("inside Gesture\n");
    
}
- (IBAction)regBtn:(UIButton *)sender {
    NSString *name=[_nameTF text];
    NSString *phone=[_phoneTF text];
    NSString *age=[_ageTF text];
    
    [defaults setObject:name forKey:@"name"];
    [defaults setObject:phone forKey:@"phone"];
    [defaults setObject:age forKey:@"age"];
    
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation *location = [locations lastObject];
    NSNumber *lat=[[NSNumber alloc]initWithDouble:location.coordinate.latitude];
    NSNumber *lng=[[NSNumber alloc]initWithDouble:location.coordinate.longitude];
    
    [_latLabel setText:[lat stringValue]];
    [_lngLabel setText:[lng stringValue]];}
@end
