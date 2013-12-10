//
//  FirstViewController.h
//  BikerDown
//
//  Created by Kurt Andres on 6/16/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MessageUI/MessageUI.h> 

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, MFMessageComposeViewControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *masterRowLabel;
@property (weak, nonatomic) IBOutlet UILabel *sliderValueLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;


@end
