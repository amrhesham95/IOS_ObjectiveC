//
//  ViewController.h
//  FirstMapDemo
//
//  Created by JETS Mobile Lab - 5 on 4/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate>
@property CLLocationManager *locationManager;

@end

