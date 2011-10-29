//
//  DetailViewController.h
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dare.h"
@interface DetailViewController : UIViewController{
    Dare* dare;
    IBOutlet UILabel *titleLabel;
    IBOutlet UITextView *descriptionTextView;
}

@property (strong, nonatomic) id detailItem;
@property (nonatomic,retain) Dare* dare;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
