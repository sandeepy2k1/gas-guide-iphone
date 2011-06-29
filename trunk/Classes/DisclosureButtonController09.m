// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "NavAppDelegate.h"
#import "DisclosureButtonController09.h"
#import "DisclosureDetailController.h"

@implementation DisclosureButtonController09
@synthesize list;
- (void)viewDidLoad {	// * * * Pre-Operative: General * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
					  @"Anesthesia Care Plan",	// Option 0
					  @"ASA Physical Status",	// Option 1
					  @"Drug Allergies",		// Option 2
					  @"History & Physical",	// Option 3
					  @"Pre-Op Tests & Labs",	// Option 4
					  @"Neuro Information",		// Option 5
					  @"NPO Guidelines",		// Option 6
					  @"Preventative Medicine",	// Option 7
					  @"Psychological Prep",	// Option 8
					  @"Spanish Translation",	// Option 9
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
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 1) // Option 1
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 2) // Option 2
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 3) // Option 3
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 4) // Option 4
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 5) // Option 5
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 6) // Option 6
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 7) // Option 7
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 8) // Option 8
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 9) // Option 9
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	
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