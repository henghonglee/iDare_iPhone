//
//  AppDelegate.h
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "FBConnect.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate,CLLocationManagerDelegate,FBSessionDelegate>
{
    
    CLLocationManager* locationManager;
    Facebook *facebook;
    
}
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) Facebook *facebook;
@property (strong, nonatomic) UINavigationController *navigationController;

@end
