//
//  CancelTimeViewController.h
//  BikerDown
//
//  Created by Kurt Andres on 6/30/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CancelTimeViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>{
    IBOutlet UIPickerView *pickerView;
    NSArray *arrStatus;
}

@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@end
