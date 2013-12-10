//
//  ContactsViewController.h
//  BikerDown
//
//  Created by Kurt Andres on 6/27/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//


#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>


@property (nonatomic, strong) NSMutableArray *players;


- (IBAction)done:(id)sender;

@end

