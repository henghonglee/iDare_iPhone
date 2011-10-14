//
//  MasterViewController.h
//  iDare
//
//  Created by Shaun Tan on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

#import <CoreData/CoreData.h>
#import "EGORefreshTableHeaderView.h"
@interface MasterViewController : UIViewController <NSFetchedResultsControllerDelegate,UITableViewDelegate,UITableViewDataSource,EGORefreshTableHeaderDelegate>
{
    EGORefreshTableHeaderView *_refreshHeaderView;
	
	//  Reloading var should really be your tableviews datasource
	//  Putting it here for demo purposes 
	BOOL _reloading;
    IBOutlet UITableView *masterTable;
}

- (void)reloadTableViewDataSource;
- (void)doneLoadingTableViewData;
@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) IBOutlet UITableView *masterTable;

@end
