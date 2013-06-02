// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "DisclosureButtonController01.h"
#import "DisclosureDetailController.h"

@implementation DisclosureButtonController01
@synthesize list;
- (void)viewDidLoad {	// * * * * Airway & Meds By Weight * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
					  @"120kg+ (264lbs+)",		// Option 0
					  @"100-119kg (220-262lbs)",// Option 1
                      @"90-99kg (198-218lbs)",	// Option 2
					  @"80-89kg (176-196lbs)",	// Option 3
					  @"70-79kg (154-174lbs)",	// Option 4
					  @"60-69kg (132-152lbs)",	// Option 5
					  @"50-59kg (110-130lbs)",	// Option 6
					  @"40-49kg (88-108lbs)",	// Option 7
					  @"30-39kg (65-86lbs)",	// Option 8
					  @"24-29kg (52-64lbs)",	// Option 9
					  @"19-23kg (41-51lbs)",	// Option 10
					  @"15-18kg (32-40lbs)",	// Option 11
					  @"12-14kg (26-31lbs)",	// Option 12
					  @"10-11kg (21-25lbs)",	// Option 13
					  @"8-9kg (17-20lbs)",		// Option 14
					  @"6-7kg (13-16lbs)",		// Option 15
					  @"4-5kg (8-12lbs)",		// Option 16
					  @"2-3kg (4-7lbs)",		// Option 17
                      nil];
    self.list = array;
    [array release];
    [super viewDidLoad];
}
- (void)viewDidUnload {
    self.list = nil;
    [childController release];
    childController = nil;
}
- (void)dealloc {
    [list release];
    [childController release];
    [super dealloc];
}
#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section {
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * DisclosureButtonCellIdentifier = 
    @"DisclosureButtonCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: 
                             DisclosureButtonCellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                       reuseIdentifier: DisclosureButtonCellIdentifier]
                autorelease];
    }
    NSUInteger row = [indexPath row];
    NSString *rowString = [list objectAtIndex:row];
    cell.textLabel.text = rowString;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [rowString release];
    return cell;
}

#pragma mark -
#pragma mark Table Delegate Methods


- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if (childController == nil)
		childController = [[DisclosureDetailController alloc] 
				   initWithNibName:@"DisclosureDetail" bundle:nil];
	
	childController.title = @"Disclosure Button Pressed";
	NSUInteger row = [indexPath row];

	NSString *selectedMovie = [list objectAtIndex:row];

	NSString *detailMessage  = [[NSString alloc] 
							initWithFormat:@"Default Text for %@.\n\nUse top left arrow to navigate back", 
							selectedMovie];
	
	if (row == 0) // Option 0 - 120kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 1) // Option 1 - 100kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 2) // Option 2 - 90kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 3) // Option 3 - 80kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 4) // Option 4 - 70kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 5) // Option 5 - 60kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 6) // Option 6 - 50kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 7) // Option 7 - 40kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 8) // Option 8 - 30kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 9) // Option 9 - 24kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 10) // Option 10 - 19kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 11) // Option 11 - 15kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 12) // Option 12 - 12kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 13) // Option 13 - 10kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 14) // Option 14 - 8kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 15) // Option 15 - 6kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 16) // Option 16 - 4kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
	if (row == 17) // Option 17 - 2kg
		detailMessage = @"TEXT HERE *\n\n---------------------------------------------\n* TEXT *\n";
		
	childController.message = detailMessage;
	childController.title = selectedMovie;
	[detailMessage release];

	[self.navigationController pushViewController:childController
									 animated:YES];
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