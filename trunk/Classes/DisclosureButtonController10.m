// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "NavAppDelegate.h"
#import "DisclosureButtonController10.h"
#import "DisclosureDetailController.h"
#import "ImageViewController.h"

@implementation DisclosureButtonController10
@synthesize list;
- (void)viewDidLoad {	// * * * * Resuscitation * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
                      @"ACLS: Asystole/PEA",	// Option 0
                      @"ACLS: Bradycardia",		// Option 1
                      @"ACLS: Maternal Arrest",	// Option 2
                      @"ACLS: Post Arrest",     // Option 3
                      @"ACLS: Tachycardia",     // Option 4
                      @"ACLS: Toxicology",      // Option 5
                      @"ACLS: VF/VT Arrest",	// Option 6
                      @"CPR Guidelines: Adult",	// Option 7
                      @"CPR Guidelines: Infant",// Option 8
                      @"NALS Guidelines",		// Option 9
                      @"PALS: Asystole/PEA",	// Option 10
                      @"PALS: Bradycardia",		// Option 11
                      @"PALS: Cyanotic Neonate",// Option 12
                      @"PALS: Post Arrest",     // Option 13
                      @"PALS: Respiratory",     // Option 14
                      @"PALS: Septic Shock",    // Option 15
                      @"PALS: Tachycardia",     // Option 16
                      @"PALS: VF/VT Arrest",	// Option 17
                      @"RSI For ACLS & PALS",   // Option 18
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
	if (row == 10) // Option 10
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 11) // Option 11
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
    if (row == 12) // Option 12
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
    if (row == 13) // Option 13
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
    if (row == 14) // Option 14
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 15) // Option 15
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 16) // Option 16
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 17) // Option 17
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 18) // Option 18
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