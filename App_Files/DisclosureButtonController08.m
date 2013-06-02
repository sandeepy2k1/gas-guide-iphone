// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "DisclosureButtonController08.h"
#import "DisclosureDetailController.h"

@implementation DisclosureButtonController08
@synthesize list;
- (void)viewDidLoad {	// * * * Pre-Operative: General * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
					  @"Anesthesia Care Plan",	// Option 0
					  @"ASA Physical Status",	// Option 1
					  @"Drug Allergies",		// Option 2
					  @"Glucocorticoid",		// Option 3
					  @"History & Physical",	// Option 4
					  @"Home Medications",      // Option 5
					  @"Pre-Op Tests & Labs",	// Option 6
					  @"Neuro Information",		// Option 7
					  @"NPO Guidelines",		// Option 8
					  @"Preventative Medicine",	// Option 9
					  @"Psychological & Risks",	// Option 10
					  @"Spanish Translation",	// Option 11
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
	
	if (row == 0) // Option 0
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 1) // Option 1
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 2) // Option 2
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 3) // Option 3
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 4) // Option 4
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 5) // Option 5
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 6) // Option 6
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 7) // Option 7
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 8) // Option 8
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 9) // Option 9
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 10) // Option 10
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	if (row == 11) // Option 11
		detailMessage = @"* Text *\nText text.\n---------------------------------------------\n* Text *\nText.";
	
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