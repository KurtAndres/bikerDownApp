//
//  FirstViewController.m
//  BikerDown
//
//  Created by Kurt Andres on 6/16/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//

#import "FirstViewController.h"
#import "ButtonView.h"


@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet ButtonView *buttonView;
//@property (assign, nonatomic) BOOL bStatus;
@property (strong, nonatomic) NSString *status;
@end

@implementation FirstViewController

BOOL enabled= false;
NSArray *tableData;
SystemSoundID alarm1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.status = self.buttonView.activated;
    tableData = [NSArray arrayWithObjects:@"Walking Mode", @"Biking Mode", @"Auto Select Mode", nil];

    //load Sounds
    //NSURL *alarm1Sound   = [[NSBundle mainBundle] URLForResource: @"Alert" withExtension: @"wav"];
    //initialize SystemSounID variable with file URL
    //AudioServicesCreateSystemSoundID (CFBridgingRetain(alarm1Sound), &alarm1);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonTapped:(UIButton *)button {
    
    MFMessageComposeViewController *messageInstance = [[MFMessageComposeViewController alloc] init];
    if([MFMessageComposeViewController canSendText]){

    messageInstance.body = @"Hello from Shah";
    messageInstance.recipients = [NSArray arrayWithObjects:@"5209751298",         nil];
    messageInstance.messageComposeDelegate = self;
    messageInstance.messageComposeDelegate = self;
    messageInstance.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
   // [self presentModalViewController:messageInstance animated:YES];
    }
    
    // Pop-up message
    //ButtonView *buttonView = (ButtonView *)button;
    
    //Set Enabled or disabled
    
    if (enabled == true) {
        self.buttonView.redColor =1.0f;
        self.buttonView.greenColor=0.0f;
        self.buttonView.activated = @"Disabled";
        
        AudioServicesDisposeSystemSoundID(alarm1);
        
        
        
        //if i want to give the fall detection enabling button a message insert here
        //NSString *messageString = [NSString stringWithFormat:@"Button Working Fine"];
        
        //message displayed when button pressed
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Fall Detection Disabled"
                                                            message:nil
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
        [alertView show];

    } else {
        self.buttonView.redColor =0.0f;
        self.buttonView.greenColor=1.0f;
        self.buttonView.activated = @"Enabled";
        
        //load Sounds
        //NSURL *alarm1Sound   = [[NSBundle mainBundle] URLForResource: @"Alert" withExtension: @"wav"];
        //initialize SystemSounID variable with file URL
        //AudioServicesCreateSystemSoundID (CFBridgingRetain(alarm1Sound), &alarm1);
        
        //play sound
        //AudioServicesPlaySystemSound(alarm1);

        
        
        //if i want to give the fall detection enabling button a message insert here
        //NSString *messageString = [NSString stringWithFormat:@"Button Working Fine"];
        
        //message displayed when button pressed
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Fall Detection Enabled"
                                                            message:nil
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
        [alertView show];
        //AudioServicesPlaySystemSound (1001);
        //[[NSSound soundNamed:@"Hero"] play];
}
    //disbable or enable, switched case of enabled
    enabled= !enabled;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
int selectedIndex = 0;

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    selectedIndex = indexPath.row;
    [tableView reloadData];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Mode";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
    if(indexPath.row == selectedIndex)
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}
- (void)viewDidUnload {
	AudioServicesDisposeSystemSoundID(alarm1);
}

@end