//
//  RKUMasterViewController.h
//  Cartelera
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RKUDetailViewController;

@interface RKUMasterViewController : UITableViewController {
    
    NSManagedObjectContext * context;
    
    NSMutableArray * peliculas;
}

@property (strong, nonatomic) RKUDetailViewController *detailViewController;
@property (nonatomic, retain) NSManagedObjectContext * context;

@end
