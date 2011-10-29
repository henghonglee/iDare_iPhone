//
//  LoginViewController.h
//  iDare
//
//  Created by Shaun Tan on 15/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface LoginViewController : UIViewController<CLLocationManagerDelegate>{
    UITextField *emailTextField;
}

@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end
