//
//  MasterViewCell.m
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MasterViewCell.h"

@implementation MasterViewCell
@synthesize addButton,amountLabel,titleLabel,dare;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(IBAction)addValue{
    
    NSString* newAmount = [NSString stringWithFormat:@"%d",[amountLabel.text intValue] + 1];
    amountLabel.text = newAmount;
    dare.radius = newAmount;
    AppDelegate* applicationDelegate = [[UIApplication sharedApplication]delegate];
    NSError* error = nil;
    [applicationDelegate.managedObjectContext save:&error];
    
}

- (void)dealloc {
    [addButton release];
    [amountLabel release];
    [addButton release];

}
@end
