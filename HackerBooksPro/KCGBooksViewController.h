//
//  KCGBooksViewController.h
//  HackerBooksPro
//
//  Created by Juan Barba Díaz on 5/2/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "AGTCoreDataTableViewController.h"
#import "KCGTag.h"

@interface KCGBooksViewController : AGTCoreDataTableViewController

-(id) initWithFetchedResultsController:(NSFetchedResultsController *)aFetchedResultsController style:(UITableViewStyle)aStyle tag:(KCGTag*) tag;

@end
