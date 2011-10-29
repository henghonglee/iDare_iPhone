//
//  MapViewController.m
//  iDare
//
//  Created by Shaun Tan on 23/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

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
    mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    mapView.showsUserLocation = YES;
    mapView.mapType = MKMapTypeStandard;
    mapView.delegate = self;
    [self.view addSubview:mapView];
    CLLocationCoordinate2D location;
    MKCoordinateRegion region;// = {{0.0,0.0},{0.0,0.0}};
    location.latitude = -33.8771;
    location.longitude = 18.6155;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.01;
    span.longitudeDelta = 0.01;
    
    CLLocationCoordinate2D coordinates =CLLocationCoordinate2DMake([@"1.34191" doubleValue], [@"103.842002" doubleValue]);
    //CLLocationManager* manager = [[CLLocationManager alloc]init];Zz
    
    region.span = span;
    region.center = coordinates;
    [mapView setRegion:region animated:TRUE];
    [mapView regionThatFits:region];
    MKCircle* circleOverlay = [MKCircle circleWithCenterCoordinate:coordinates radius:100];    
    [mapView addOverlay:circleOverlay];

    // Do any additional setup after loading the view from its nib.
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id < MKOverlay >)overlay
{
    NSLog(@"called deleagate method");
    
    MKCircleView *circleView = [[MKCircleView alloc] initWithCircle:(MKCircle *)overlay];
    circleView.fillColor = [UIColor blueColor];
    return [circleView autorelease];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
