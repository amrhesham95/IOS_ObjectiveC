//
//  ViewController.h
//  RegisterWithMap
//
//  Created by JETS Mobile Lab - 5 on 4/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate>
@property CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UITextField *nameTF;

@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;

@property (weak, nonatomic) IBOutlet UILabel *latLabel;
@property (weak, nonatomic) IBOutlet UILabel *lngLabel;
- (IBAction)regBtn:(UIButton *)sender;
@end

