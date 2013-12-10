//
//  SecondViewController.h
//  BikerDown
//
//  Created by Kurt Andres on 6/16/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UITableViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *FallAlertLabel;
@property (weak, nonatomic) IBOutlet UILabel *CrashAlertLabel;
@property (weak, nonatomic) IBOutlet UISwitch *FallSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *CrashSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *gpsSwitch;


//- (IBAction)sliderValueChanged:(UISlider *)slider;

@end
