//
//  CreateDareViewController.m
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CreateDareViewController.h"
#import "Dare.h"
@implementation CreateDareViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)confirmDare:(id)sender {
    AppDelegate* applicationDelegate = [[UIApplication sharedApplication] delegate];
    Dare *newDare = [NSEntityDescription insertNewObjectForEntityForName:@"Dare" inManagedObjectContext:applicationDelegate.managedObjectContext];
    
    newDare.title = dareTitleTextField.text;
    newDare.radius = amountTextField.text;
    newDare.dareDescription = dareDescriptionTextField.text;
    NSError* error = nil;
    [applicationDelegate.managedObjectContext save:&error];
    [self.navigationController popViewControllerAnimated:YES];
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
    dareTitleTextField.delegate = self;
    dareDescriptionTextField.delegate = self;
    amountTextField.delegate = self;

    // Do any additional setup after loading the view from its nib.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidUnload
{
    [dareDescriptionTextField release];
    [dareTitleTextField release];
    dareTitleTextField = nil;
    [amountTextField release];
    amountTextField = nil;
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
;   [dareDescriptionTextField release];
    [dareTitleTextField release];
    [amountTextField release];
    [super dealloc];
}
@end
