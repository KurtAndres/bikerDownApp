//
//  CancelTimeViewController.m
//  BikerDown
//
//  Created by Kurt Andres on 6/30/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//

#import "CancelTimeViewController.h"

@interface CancelTimeViewController ()

@end

@implementation CancelTimeViewController

BOOL firstTime= true;

//@synthesize pickerView = _pickerView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    if (firstTime){
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:2 forKey:@"timePause"];
        [defaults setObject:@"15 Seconds" forKey:@"timeText"];
    }
    [super viewDidLoad];
    arrStatus = [[NSArray alloc] initWithObjects:@"5 Seconds", @"10 Seconds", @"15 Seconds", @"20 Seconds", @"25 Seconds", @"30 Seconds", @"60 Seconds", nil];
    int place = [[NSUserDefaults standardUserDefaults]
                            integerForKey:@"timePause"];
    [pickerView reloadAllComponents];
    [pickerView selectRow:place inComponent:0 animated:YES];
    
    [_timeLabel setText:[[NSUserDefaults standardUserDefaults]
                         objectForKey:@"timeText"]];    
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //One column
    return 1;
}


//Kurts method to set the number of rows in the pickerView
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //set number of rows
    return arrStatus.count;
}

//kurts method to set the data from array in picker view
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //set item per row
    return [arrStatus objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
   //Storing setting for timePause in NSUserDefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:row forKey:@"timePause"];
    
    //Setting the label and storing it in UserDefaults
    
    [_timeLabel setText:[arrStatus objectAtIndex:row]];
    [defaults setObject:[arrStatus objectAtIndex:row] forKey:@"timeText"];
    
    firstTime=false;
}
       
@end