//
//  locationController.h
//  iDare
//
//  Created by Shaun Tan on 25/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface locationController: NSObject  <CLLocationManagerDelegate>
{
    CLLocationManager* manager;
}
+(locationController*)sharedController;
@end
