//
//  MasterViewController.h
//  MythicApps
//
//  Created by Yoseph Radding on 4/30/15.
//  Copyright (c) 2015 Yoseph Radding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

