//
//  PicklerTableViewController.m
//  PIckler_v2
//
//  Created by Dustin Godevais on 8/15/13.
//  Copyright (c) 2013 Dustin Godevais. All rights reserved.
//

#import "PicklerTableViewController.h"
#import "PicklerDetailViewController.h"
#import <Parse/Parse.h>

@implementation PicklerTableViewController

-(id)init
{
    // Call the superclass's designated init function
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    if(self){
        
        // Collecting the data
        PFQuery *picklerData = [PFQuery queryWithClassName:@"Picklers"];
        
        [picklerData findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
            if(!error){
                possiblePicklers = [[NSArray alloc] initWithArray:objects];
                [self.tableView reloadData];
            }
        }];
        
    }
    return self;
}

-(id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return possiblePicklers.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    PFObject *picklerObject = [possiblePicklers objectAtIndex:indexPath.row];
    
    [[cell textLabel] setText:[picklerObject objectForKey:@"title"]];
    
    return cell;
}

-(UIView *)headerView
{
    // if we haven't loaded the headerView...
    if(!headerView){
        // load the headerview xib file
        [[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:nil];
    }
    return headerView;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [self headerView];
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return [[self headerView]bounds].size.height;
}

// The add a new Pickler button was pressed
-(IBAction)addNewPickler:(id)sender
{
    
}

// The user selected a row
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PicklerDetailViewController *detailController = [[PicklerDetailViewController alloc]init];
    
    [[self navigationController] pushViewController:detailController animated:YES];
    
}



@end
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
                                                     
