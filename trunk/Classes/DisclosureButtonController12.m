// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//
//	Original Modification by James Lamberg 21Nov09
//	Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "NavAppDelegate.h"
#import "DisclosureButtonController12.h"
#import "DisclosureDetailController.h"
#import "ImageViewController.h"

@implementation DisclosureButtonController12
@synthesize list;
- (void)viewDidLoad {	// * * * * About & Disclaimer * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
					  @"Disclaimer",				// Option 0
                      @"About Gas Guide",			// Option 1
					  @"Anesthesia Aphorisms",		// Option 2
					  @"Vigilance: The ASA Seal",	// Option 3
					  @"Go To NYSORA Website",		// Option 4
					  @"Go To MHAUS Website",		// Option 5
					  @"Go To ASA Website",			// Option 6
					  @"Go To Feedback Site",		// Option 7
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
		detailMessage = @"Every clinician is responsible for their actions. This application is to be used as a guide only. It is not meant to replace clinical judgment.\n\nThe authors of this application make no claims of the accuracy of the information contained herein. The authors of this application and its content should not be made liable for any injury and/or damage to persons or property arising from the use of this application.\n\nIt is the responsibility of the licensed prescriber to double check the indications, contraindications, and dosages of the medications and treatments they prescribe.";	
	if (row == 1) // Option 1
		detailMessage = @"Gas Guide (v1.0, January 2010)\nAnesthesia Quick Reference\n\nLead Editors:\nJames J. Lamberg, DO\nDanny L. Valentine, MD\nLaurie A. Swenn, CRNA\n\nSpecial Thanks To:\nLisa J. Yoo, DO\nSamir T. Mukherjee, MD\nAdam M. Chapweske, MD\nWade L. Schulz, MS-IV, PhD(c)\nNY School of Regional Anesthesia\n\nFirst Released (v1.0): 19-Jan-2010\nSoftware Developer: James Lamberg\nPlease email with questions/comments\nContact: james.lamberg@gmail.com";
	if (row == 2) // Option 2
		detailMessage = @"* Sample Text *\nLine 1\nLine 2\n--------------------------------------------------\nLine 3";
	if (row == 3) // Option 3
		detailMessage = @"The ASA seal depicts the role of the anesthesiologist in patient care:\n\n“The patient is represented as (a ship) sailing in the troubled sea with the clouds of doubt and waves of terror being guided by the skillful pilot (anesthesiologist) with constant and eternal (stars) vigilance (motto) by the dependable (firmly based lighthouse) knowledge of the art and science of sleep (moon) to a safe (shield) and happy outcome of his voyage through the realms of the unknown. The perfect circle denotes the unity of a closed group (the Society).”\n\n~Paul M. Wood, M.D. (April 13, 1932)";
	if (row == 4) // Option 4
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.nysora.com/"]];
	if (row == 5) // Option 5
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.mhaus.org/"]];
	if (row == 6) // Option 6
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.asahq.org/"]];
	if (row == 7) // Option 7
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://apps.jameslamberg.com/feedback_gas_guide.html"]];
	
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
// To view a copy of this license, visit: 
// creativecommons.org/licenses/by-nc-sa/3.0/
// or send a letter to: 
// Creative Commons
// 444 Castro Street, Suite 900
// Mountain View, California, 94041, USA.
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *