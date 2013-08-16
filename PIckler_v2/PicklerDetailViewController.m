//
//  PicklerDetailViewController.m
//  PIckler_v2
//
//  Created by Dustin Godevais on 8/15/13.
//  Copyright (c) 2013 Dustin Godevais. All rights reserved.
//

#import "PicklerDetailViewController.h"
#import <Parse/Parse.h>

@interface PicklerDetailViewController ()
{
    
    __weak IBOutlet UITextField *addressField;
    __weak IBOutlet UITextField *descField;
    __weak IBOutlet UITextField *titleField;
    
    NSString *currentPicklerID;
    NSString *currentPicklerTitle;
    NSString *currentPicklerDescription;
    NSString *currentPicklerAddress;

}
-(void)setCurrentPickler: (PFObject *)thePickler;


@end

@implementation PicklerDetailViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}

-(void)setCurrentPickler: (PFObject *)thePickler
{
    currentPicklerTitle = [[NSString alloc]initWithFormat:@"%@",[thePickler objectForKey:@"title"]];
    currentPicklerDescription = [[NSString alloc]initWithFormat:@"%@",[thePickler objectForKey:@"Description"]];
    currentPicklerAddress = [[NSString alloc]initWithFormat:@"%@",[thePickler objectForKey:@"Address"]];

    
}

-(void)viewWillAppear:(BOOL)animated
{
    
}

@end
