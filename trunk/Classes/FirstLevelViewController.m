// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  FirstLevelViewController.m
//  Gas Guide iOS App
//
//	Original Modification by James Lamberg 21Nov09
//	Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "FirstLevelViewController.h"
#import "SecondLevelViewController.h"
#import "DisclosureButtonController01.h"
#import "DisclosureButtonController02.h"
#import "DisclosureButtonController03.h"
#import "DisclosureButtonController04.h"
#import "DisclosureButtonController05.h"
#import "DisclosureButtonController06.h"
#import "DisclosureButtonController07.h"
#import "DisclosureButtonController08.h"
#import "DisclosureButtonController09.h"
#import "DisclosureButtonController10.h"
#import "DisclosureButtonController11.h"
#import "DisclosureButtonController12.h"

@implementation FirstLevelViewController
@synthesize controllers;
- (void)viewDidLoad {
    self.title = @"Gas Guide";
    NSMutableArray *array = [[NSMutableArray alloc] init];
    	
    // * * * * 1st Title (Main Page) * * * *
    DisclosureButtonController01 *disclosureButtonController01 =
    [[DisclosureButtonController01 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController01.title = @"Airway & Meds By Weight";
    [array addObject:disclosureButtonController01];
    [disclosureButtonController01 release];  
    
	// * * * * 2nd Title (Main Page) * * * *
    DisclosureButtonController02 *disclosureButtonController02 =
    [[DisclosureButtonController02 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController02.title = @"Airway Management";
    [array addObject:disclosureButtonController02];
    [disclosureButtonController02 release];  
    
	// * * * * 3rd Title (Main Page) * * * *
    DisclosureButtonController03 *disclosureButtonController03 =
    [[DisclosureButtonController03 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController03.title = @"Emergencies";
    [array addObject:disclosureButtonController03];
    [disclosureButtonController03 release];  
	
	// * * * * 4th Title (Main Page) * * * *
    DisclosureButtonController04 *disclosureButtonController04 =
    [[DisclosureButtonController04 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController04.title = @"Nerve Blockade";
    [array addObject:disclosureButtonController04];
    [disclosureButtonController04 release];  	
	
	// * * * * 5th Title (Main Page) * * * *
    DisclosureButtonController05 *disclosureButtonController05 =
    [[DisclosureButtonController05 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController05.title = @"Operative Safety";
    [array addObject:disclosureButtonController05];
    [disclosureButtonController05 release];  	
    
	// * * * * 6th Title (Main Page) * * * *
    DisclosureButtonController06 *disclosureButtonController06 =
    [[DisclosureButtonController06 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController06.title = @"Patient Monitoring";
    [array addObject:disclosureButtonController06];
    [disclosureButtonController06 release];  
			
	// * * * * 7th Title (Main Page) * * * *
    DisclosureButtonController07 *disclosureButtonController07 =
    [[DisclosureButtonController07 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController07.title = @"Pharmacology";
    [array addObject:disclosureButtonController07];
    [disclosureButtonController07 release];  	
	
	// * * * * 8th Title (Main Page) * * * *
    DisclosureButtonController08 *disclosureButtonController08 =
    [[DisclosureButtonController08 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController08.title = @"Pre-Operative: Cardiac";
    [array addObject:disclosureButtonController08];
    [disclosureButtonController08 release];  
	
	// * * * * 9th Title (Main Page) * * * *
    DisclosureButtonController09 *disclosureButtonController09 =
    [[DisclosureButtonController09 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController09.title = @"Pre-Operative: General";
    [array addObject:disclosureButtonController09];
    [disclosureButtonController09 release];  	

	// * * * * 10th Title (Main Page) * * * *
    DisclosureButtonController10 *disclosureButtonController10 =
    [[DisclosureButtonController10 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController10.title = @"Resuscitation";
    [array addObject:disclosureButtonController10];
    [disclosureButtonController10 release];  	

	// * * * * 11th Title (Main Page) * * * *
    DisclosureButtonController11 *disclosureButtonController11 =
    [[DisclosureButtonController11 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController11.title = @"Vascular Access";
    [array addObject:disclosureButtonController11];
    [disclosureButtonController11 release];  	

	// * * * * 12th Title (Main Page) * * * *
    DisclosureButtonController12 *disclosureButtonController12 =
    [[DisclosureButtonController12 alloc] 
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController12.title = @"About & Disclaimer";
    [array addObject:disclosureButtonController12];
    [disclosureButtonController12 release];  	
	
    self.controllers = array;
    [array release];
    [super viewDidLoad];
}
- (void)viewDidUnload {
    self.controllers = nil;
    [super viewDidUnload];
}
- (void)dealloc {
    [controllers release];
    [super dealloc];
}
#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section {
    return [self.controllers count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *FirstLevelCell= @"FirstLevelCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: 
                             FirstLevelCell];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                       reuseIdentifier: FirstLevelCell] autorelease];
    }
    // Configure the cell
    NSUInteger row = [indexPath row];
    SecondLevelViewController *controller =
    [controllers objectAtIndex:row];
    cell.textLabel.text = controller.title;
    cell.imageView.image = controller.rowImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger row = [indexPath row];
    SecondLevelViewController *nextController = [self.controllers
                                                 objectAtIndex:row];
    
    [self.navigationController pushViewController:nextController animated:YES];
}
@end

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
// This work is licensed under the Creative Commons
// Attribution-NonCommercial-ShareAlike 3.0 Unported License.
// To view a copy of this license, visit: 
// creativecommons.org/licenses/by-nc-sa/3.0/
// or send a letter to: 
// Creative Commons
// 444 Castro Street, Suite 900
// Mountain View, California, 94041, USA.
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *