//
//  PicklerDetailViewController.m
//  PIckler_v2
//
//  Created by Dustin Godevais on 8/15/13.
//  Copyright (c) 2013 Dustin Godevais. All rights reserved.
//

#import "PicklerDetailViewController.h"

@interface PicklerDetailViewController ()
{
    
    __weak IBOutlet UITextField *addressField;
    __weak IBOutlet UITextField *descField;
    __weak IBOutlet UITextField *titleField;
}

@end

@implementation PicklerDetailViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}

@end
