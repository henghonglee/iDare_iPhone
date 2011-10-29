//
//  Dare.h
//  iDare
//
//  Created by Shaun Tan on 16/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Dare : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * dareDescription;
@property (nonatomic, retain) NSString * centerlat;
@property (nonatomic, retain) NSString * centerlong;
@property (nonatomic, retain) NSString * radius;

@end
