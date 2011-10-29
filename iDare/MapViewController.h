//
//  MapViewController.h
//  iDare
//
//  Created by Shaun Tan on 23/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate>
{
    MKMapView* mapView;
}
@end
