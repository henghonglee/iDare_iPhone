//
//  locationController.m
//  iDare
//
//  Created by Shaun Tan on 25/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "locationController.h"

@implementation locationController
static id _sharedController = nil;
+(locationController*)sharedController
{
	@synchronized(self)
    {
        if (_sharedController == nil)
			_sharedController = [[locationController alloc] init];
        NSLog(@"sharedController initializing");
    }
	return _sharedController;
}

-(id)init{
    if (self = [super init]){
        manager = [[CLLocationManager alloc]init];
        manager.delegate = self;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"MonitorSignificantLocation"]){
        [manager startMonitoringSignificantLocationChanges];
    }
    return self;
}

#pragma mark delegate methods for CLLocationManager

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    
    // If it's a relatively recent event, turn off updates to save power
    NSDate* eventDate = newLocation.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 15.0)
    {
        //send webservice here!!
        //@"http://gentle-rain-8062.heroku.com/register param[:email], param[:password]"
        //http://gentle-rain-8062.heroku.com/user_update/ email password lat lng
        
        NSLog(@"latitude %+.6f, longitude %+.6f\n",newLocation.coordinate.latitude,newLocation.coordinate.longitude);
    }
    // else skip the event and process the next one.
}

-(void)startMonitoringRegion:(CLRegion*)region
{
    
}

@end
