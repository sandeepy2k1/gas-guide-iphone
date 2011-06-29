// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//
//	Original Modification by James Lamberg 21Nov09
//	Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "NavAppDelegate.h"
#import "DisclosureButtonController03.h"
#import "DisclosureDetailController.h"

@implementation DisclosureButtonController03
@synthesize list;
- (void)viewDidLoad {	// * * * * Emergencies * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
					  @"Acute Stridor",				// Option 0
                      @"Anaphylaxis",				// Option 1
					  @"Cardiac Arrest",			// Option 2
					  @"Cardiac Devices",			// Option 3
					  @"Crisis Algorithm",			// Option 4
					  @"Hemorrhage & Transfusion",	// Option 5
					  @"Malignant Hyperthermia",	// Option 6
					  @"Tension Pneumothorax",		// Option 7
					  @"Common Cardiac Issues",		// Option 8
					  @"Common Post-Op Issues",		// Option 9
					  @"Common Respiratory Issues", // Option 10
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
		detailMessage = @"COVER ABCD A SWIFT CHECK\n--------------------------------------------------\nC: circulation, capnograph, color\nO: oxygen, O2 analyzer\nV: ventilation, vaporizer\nE: ET tube, elimination machine\nR: review monitors/equipment\n--------------------------------------------------\nA: airway\nB: breathing\nC: circulation\nD: drugs\n--------------------------------------------------\nA: air embolism, anaphylaxis, air in pleura, awareness\n--------------------------------------------------\nS: surgeon, situation, sepsis\nW: water intoxication\nI: infarct, insufflations\nF: fat syndrome, full bladder\nT: trauma, tourniquet down\n--------------------------------------------------\nC: catheter, cannula, chest drain, cement\nH: hyperthermia, hypothermia, hypoglycemia\nE: embolus, endocrine\nC: check patient and history\nK: K+ potassium, keep patient asleep\n--------------------------------------------------\n* Anesthesia Considerations *\nExclude hypoxia and hypercapnia.\nIs this a response to laryngoscopy and intubation?\nCorrect volatile agent use and rotameter setting?\nIs the patient in pain or becoming aware?\nAre the drugs correct? What interactions?\nIs monitoring adequate?\nIs this malignant hyperthermia?\n--------------------------------------------------\n* Surgical Considerations *\nIs this a reflex response? (eye, dental, vagal)\nAre retractors situated correctly?\nIs the patient hemorrhaging?\n--------------------------------------------------\n* Medical Considerations *\nIs there a specific disease (e.g. cardiac)?\nIs there an undiagnosed disease (e.g. pheochromocytoma)?\nIs there an electrolyte or acid/base imbalance?\n\n--------------------------------------------------\n--------------------------------------------------\nAdapted From:\nCrisis Management During Anaesthesia. Qual Saf Health Care 2005;14:e1";
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