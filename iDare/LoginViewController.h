//
//  LoginViewController.h
//  iDare
//
//  Created by Shaun Tan on 15/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController {
    UITextField *emailTextField;
}

@property (retain, nonatomic) IBOutlet UITextField *emailTextField;

@end
