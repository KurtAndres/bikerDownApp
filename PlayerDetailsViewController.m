//
//  ContactDetailsViewController.m
//  BikerDown
//
//  Created by Kurt Andres on 6/25/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//



#import "PlayerDetailsViewController.h"
#import "Player.h"

@implementation PlayerDetailsViewController
{
    NSString* messageBody;
}

@synthesize delegate;
@synthesize nameTextField;
@synthesize numberTextField;
@synthesize messageTextField;

- (id)initWithCoder:(NSCoder *)aDecoder
{
	if ((self = [super initWithCoder:aDecoder]))
	{
		NSLog(@"init PlayerDetailsViewController");
        messageBody =@"Provide Alert Message";
	}
	return self;
}

- (void)dealloc
{
	NSLog(@"dealloc PlayerDetailsViewController");
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
	[super viewDidLoad];

    numberTextField.keyboardType = UIKeyboardTypePhonePad;
    
    
}


- (void)viewDidUnload
{
	[self setNameTextField:nil];
	[self setMessageTextField:nil];
    [self setNumberTextField:nil];
	[super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (indexPath.section == 0)
		[self.nameTextField becomeFirstResponder];
    if (indexPath.section == 1)
        [self.numberTextField becomeFirstResponder];
    if (indexPath.section == 2)
        [self.messageTextField becomeFirstResponder];
    
        

}

- (IBAction)cancel:(id)sender
{
    NSLog(@"dealloc PlayerDetailsViewController");
	[self.delegate playerDetailsViewControllerDidCancel:self];
    
}

- (IBAction)done:(id)sender
{
	Player *player = [[Player alloc] init];
	player.name = self.nameTextField.text;
    player.number = self.numberTextField.text;
	player.message = self.messageTextField.text;
    
	[self.delegate playerDetailsViewController:self didAddPlayer:player];
    

}

#pragma mark - GamePickerViewControllerDelegate

@end


