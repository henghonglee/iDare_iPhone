//
//  MasterViewCell.h
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dare.h"
@interface MasterViewCell : UITableViewCell {
    
    IBOutlet UIButton *addButton;
    IBOutlet UILabel *amountLabel;
    IBOutlet UILabel *titleLabel;
    Dare* dare;
}
@property (retain, nonatomic) Dare* dare;
@property (retain, nonatomic) IBOutlet UILabel *titleLabel;
@property (retain, nonatomic) IBOutlet UILabel *amountLabel;
@property (retain, nonatomic) IBOutlet UIButton *addButton;

@end
