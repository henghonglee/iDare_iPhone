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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)Login:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://gentle-rain-8062.heroku.com/register"];
    __block ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
    [request setPostValue:emailTextField.text forKey:@"email"];
    [request setPostValue:@"password" forKey:@"password"];
    [request setPostValue:@"password" forKey:@"password"];
    
    [request setCompletionBlock:^{
        // Use when fetching text data
        NSString *responseString = [request responseString];
        NSLog(@"%@",responseString);
        // Use when fetching binary data
        MasterViewController *masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
        [self.navigationController pushViewController:masterViewController  animated:YES];
        [masterViewController release];
        
        NSData *responseData = [request responseData];
    }];
    [request setFailedBlock:^{
        NSError *error = [request error];
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
