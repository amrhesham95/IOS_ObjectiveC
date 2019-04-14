//
//  AppDelegate.h
//  Calculator
//
//  Created by Esraa Hassan on 4/14/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

