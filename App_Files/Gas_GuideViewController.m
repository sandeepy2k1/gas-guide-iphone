// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  Gas_GuideViewController.m
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "Gas_GuideViewController.h"

@interface Gas_GuideViewController ()

@end

@implementation Gas_GuideViewController
@synthesize tbl;
@synthesize controllers;
- (void)viewDidLoad
{
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
    disclosureButtonController03.title = @"Emergency Resuscitation";
    [array addObject:disclosureButtonController03];
    [disclosureButtonController03 release];
	
	// * * * * 4th Title (Main Page) * * * *
    DisclosureButtonController04 *disclosureButtonController04 =
    [[DisclosureButtonController04 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController04.title = @"Patient Monitoring";
    [array addObject:disclosureButtonController04];
    [disclosureButtonController04 release];
	
	// * * * * 5th Title (Main Page) * * * *
    DisclosureButtonController05 *disclosureButtonController05 =
    [[DisclosureButtonController05 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController05.title = @"Patient Safety";
    [array addObject:disclosureButtonController05];
    [disclosureButtonController05 release];
    
	// * * * * 6th Title (Main Page) * * * *
    DisclosureButtonController06 *disclosureButtonController06 =
    [[DisclosureButtonController06 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController06.title = @"Pharmacology";
    [array addObject:disclosureButtonController06];
    [disclosureButtonController06 release];
    
	// * * * * 7th Title (Main Page) * * * *
    DisclosureButtonController07 *disclosureButtonController07 =
    [[DisclosureButtonController07 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController07.title = @"Pre-Operative: Cardiac";
    [array addObject:disclosureButtonController07];
    [disclosureButtonController07 release];
	
	// * * * * 8th Title (Main Page) * * * *
    DisclosureButtonController08 *disclosureButtonController08 =
    [[DisclosureButtonController08 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController08.title = @"Pre-Operative: General";
    [array addObject:disclosureButtonController08];
    [disclosureButtonController08 release];
	
	// * * * * 9th Title (Main Page) * * * *
    DisclosureButtonController09 *disclosureButtonController09 =
    [[DisclosureButtonController09 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController09.title = @"Problems: Common";
    [array addObject:disclosureButtonController09];
    [disclosureButtonController09 release];
    
	// * * * * 10th Title (Main Page) * * * *
    DisclosureButtonController10 *disclosureButtonController10 =
    [[DisclosureButtonController10 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController10.title = @"Problems: Uncommon";
    [array addObject:disclosureButtonController10];
    [disclosureButtonController10 release];
    
	// * * * * 11th Title (Main Page) * * * *
    DisclosureButtonController11 *disclosureButtonController11 =
    [[DisclosureButtonController11 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController11.title = @"Regional Anesthesia";
    [array addObject:disclosureButtonController11];
    [disclosureButtonController11 release];
    
	// * * * * 12th Title (Main Page) * * * *
    DisclosureButtonController12 *disclosureButtonController12 =
    [[DisclosureButtonController12 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController12.title = @"Vascular Access";
    [array addObject:disclosureButtonController12];
    [disclosureButtonController12 release];
    
	// * * * * 13th Title (Main Page) * * * *
    DisclosureButtonController13 *disclosureButtonController13 =
    [[DisclosureButtonController13 alloc]
     initWithStyle:UITableViewStylePlain];
    disclosureButtonController13.title = @"About & Disclaimer";
    [array addObject:disclosureButtonController13];
    [disclosureButtonController13 release];
    
    self.controllers = array;
    [array release];
    [super viewDidLoad];
}
#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    
    return [controllers count];
    
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
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSUInteger row = [indexPath row];
    SecondLevelViewController *nextController = [self.controllers
                                                 objectAtIndex:row];
    
    [self.navigationController pushViewController:nextController animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
// This work is licensed under the Creative Commons
// Attribution-NonCommercial-ShareAlike 3.0 Unported License.
//
// Attribution: You must attribute the work in the manner
// specified by the author or licensor (but not in any way
// that suggests that they endorse you or your use of the work)
//
// Noncommercial: You may not use this work for
// commercial purposes
//
// Share Alike: If you alter, transform, or build upon this
// work, you may distribute the resulting work only under
// the same or similar license to this one
//
// To view a copy of this license, visit:
// http://creativecommons.org/licenses/by-nc-sa/3.0/
// or send a letter to:
// Creative Commons
// 444 Castro Street, Suite 900
// Mountain View, California, 94041, USA.
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *