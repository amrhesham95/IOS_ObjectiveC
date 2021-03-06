//
//  MADAnnotation.h
//  FirstMapDemo
//
//  Created by JETS Mobile Lab - 5 on 4/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MADAnnotation : NSObject <MKAnnotation>
@property (nonatomic) CLLocationCoordinate2D coordinate;



// Title and subtitle for use by selection UI.
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;
@end

NS_ASSUME_NONNULL_END
