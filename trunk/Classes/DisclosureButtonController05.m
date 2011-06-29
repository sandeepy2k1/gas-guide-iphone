// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "NavAppDelegate.h"
#import "DisclosureButtonController05.h"
#import "DisclosureDetailController.h"
#import "ImageViewController.h"

@implementation DisclosureButtonController05
@synthesize list;
- (void)viewDidLoad {	// * * * * Operative Safety * * * *
    NSArray *array = [[NSArray alloc] initWithObjects:
					  @"Anesthesia Mnemonics",		// Option 0
					  @"Anesthesia Room Setup",		// Option 1
					  @"ASA Daily Check",			// Option 2
					  @"ASA Pre-Anesthesia Check",	// Option 3
                      @"Avoiding Anesthesia Errors",// Option 4
                      @"FDA Apparatus Checkout",	// Option 5
                      @"JCAHO Universal Protocol",	// Option 6
					  @"Operating Room Fires",		// Option 7					  
					  @"Patient Positioning",		// Option 8
					  @"WHO Surgical Safety Check",	// Option 9
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
		detailMessage = @"Pre-Case Room Setup (SOAP M)\n--------------------------------------------------\n* S: Suction *\nMake sure suction is on, plugged in tightly to canister, on at full blast.\n--------------------------------------------------\n* O: Oxygen *\nCheck that pipeline supply is between 50-55psi and connected to the wall.\nCheck that the cylinder in the back of the machine has adequate oxygen (>1000psi) in case of emergency.\nCalibrate O2 sensor.\nMake sure a BVM (AmbuBag) is available.\n--------------------------------------------------\n* A: Airway *\nCheck all laryngoscopes and handles.\nChoose appropriate ETT, check cuff for leaks, ETT stylet available.\nMake sure an LMA is available.\nOral airway, bite block, and tape.\nStethoscope.\n--------------------------------------------------\n* P: Pharmacy *\nDraw up main drugs needed for the case (including a sedative, induction agent, paralytics).\nMake sure emergency drugs (epinephrine, atropine, extra succinylcholine) are available.\nMake sure vaporizers are adequately filled.\nMake sure appropriate antibiotics are available.\nSet up appropriate drips and have a functioning drug infusion pump.\n--------------------------------------------------\n* M: Machine/Monitors *\nPerform Machine Check.\nCheck monitors.\nAppropriate sized BP cuff working.\nECG cables/electrodes and pulse oximeter working.\nNerve stimulator working.\nFluid/patient warmer devices.\nArm straps, arm boards setup.\nA-line, CVP, PA cath, EEG monitors as indicated.\n--------------------------------------------------\n* Additional Items *\nKnow where to find fire extinguisher.\nKnow where to find code cart/defibrillator.\nKnow where to find malignant hyperthermia kit.\n\n--------------------------------------------------\n--------------------------------------------------\nAdapted From:\nThe CA-1 Survival Guide. Brigham & Women's Hospital 2008.";
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
		detailMessage = @"* Sign In *\n1) Patient has confirmed: identity, site, procedure, consent.\n2) Site marked. (if applicable)\n3) Anesthesia safety check completed.\n4) Pulse oximeter on patient and functioning.\n5) Does patient have a known allergy? If yes, take measures to avoid.\n6) Does patient have a difficult airway or aspiration risk? If yes, have equipment and assistance available.\n7) Does patient have a risk of >500mL blood loss (7mL/kg in children)? If yes, have adequate IV access and fluids planned.\n--------------------------------------------------\n* Time Out *\n1) Confirm all team members have introduced themselves by name and role.\n2) Surgeon, anesthesia professional, and nurse verbally confirm: patient, site, procedure.\n3) Anticipated critical events reviewed by surgeon: what are the critical or unexpected steps, operative duration, anticipated blood loss?\n4) Anticipated critical events reviewed by anesthesia: are there any patient-specific concerns?\n5) Anticipated critical events reviewed by nursing team: has sterility (including indicator results) been confirmed? Are there equipment issues or any concerns?\n6) Has antibiotic prophylaxis been given within the past 60 minutes? (if applicable)\n7) Is essential imaging displayed? (if applicable)\n--------------------------------------------------\n* Sign Out *\nNurse verbally confirms with the team:\n1) The name of the procedure recorded.\n2) That instrument, sponge, and needle counts are correct. (if applicable)\n3) How the specimen is labeled (including patient name).\n4) Whether there are any equipment problems to be addressed.\n5) Surgeon, anesthesia professional, and nurse review the key concerns for recovery and management of this patient.\n\n--------------------------------------------------\n--------------------------------------------------\nVerbatim From:\nSurgical Safety Checklist. World Health Organization 2008.";
		
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