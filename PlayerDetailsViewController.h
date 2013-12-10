//
//  ContactDetailsViewController.h
//  BikerDown
//
//  Created by Kurt Andres on 6/25/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//



@class PlayerDetailsViewController;
@class Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;

@end

@interface PlayerDetailsViewController : UITableViewController

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberTextField;
@property (strong, nonatomic) IBOutlet UITextField *messageTextField;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
