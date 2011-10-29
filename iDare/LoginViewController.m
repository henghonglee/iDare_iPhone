//
//  LoginViewController.m
//  iDare
//
//  Created by Shaun Tan on 15/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"
#import "MasterViewController.h"
#import "ASIFormDataRequest.h"
#import "MapViewController.h"
@implementation LoginViewController
@synthesize emailTextField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"didfail");
}
- (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)_region
{
    NSLog(@"moved into %@",_region.identifier);
}
- (void)locationManager:(CLLocationManager *)manager didStartMonitoringForRegion:(CLRegion *)region
{
    NSLog(@"did start monitoring");
}
- (void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region{
    NSLog(@"didExitRegion");
}

- (void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error
{
    
    NSLog(@"monitoringDidFailForRegion");
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


- (IBAction)Login:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://idare.herokuapp.com/register"];
    __block ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
    [request setPostValue:@"henghong.lee@gmail.com" forKey:@"email"];
    [request setPostValue:@"password" forKey:@"password"];
   
    [request setRequestMethod:@"POST"];
    //[request start];
   
    //for testing
  //  MapViewController *viewController = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
    
    
    MasterViewController *viewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    [self.navigationController pushViewController:viewController  animated:YES];
    [viewController release];
    [request setCompletionBlock:^{
        // Use when fetching text data
        NSString *responseString = [request responseString];
        NSLog(@"%@",responseString);
        // Use when fetching binary data
        
        
      //  NSData *responseData = [request responseData];
    }];
    [request setFailedBlock:^{
       // NSError *error = [request error];
    }];
    [request startAsynchronous];
    
}

- (void)viewDidUnload
{
    [self setEmailTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [emailTextField release];
    [super dealloc];
}
@end
