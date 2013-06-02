// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureButtonController.m
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "DisclosureButtonController13.h"
#import "DisclosureDetailController.h"

@implementation DisclosureButtonController13
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
					  @"Donate To Gas Guide",		// Option 7
					  @"Go To Feedback Site",		// Option 8
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
		detailMessage = @"Gas Guide (v3.2, 2013)\nAnesthesia Quick Reference\n\nLead Editors:\nJames J. Lamberg, DO\nDanny L. Valentine, MD\nLaurie A. Swenn, CRNA\n\nSpecial Thanks To:\nLisa J. Yoo, DO, MS\nSamir T. Mukherjee, MD\nAdam M. Chapweske, MD\nWade L. Schulz, MS-IV, PhD(c)\nNY School of Regional Anesthesia\n\nFirst Released (v1.0): 19-Jan-2010\nSoftware Developer: James Lamberg\nPlease email with questions/comments\nContact: james.lamberg@gmail.com";
	if (row == 2) // Option 2
		detailMessage = @"**** Vigilance ****\n---------------------------------------------\nAlways look carefully at previous anesthetic charts - remain vigilant\n---------------------------------------------\nKnow where emergency equipment is kept (e.g. defibrillator, fire extinguisher, malignant hyperthermia kit, lipid rescue kit)\n---------------------------------------------\nAlways label all syringes, always\n---------------------------------------------\nInadequate preoperative planning and errors in patient preparation are the most common causes of anesthetic complications ~ Morgan & Mikhail\n---------------------------------------------\n5 Ps: proper planning prevents poor performance\n---------------------------------------------\nIt is better to plan than to react\n---------------------------------------------\nCompromised, though not desirable, is permissible with all but patient safety\n---------------------------------------------\nNo one else in the O.R. is really interested in your problems, but you had better be interested in theirs\n---------------------------------------------\n**** Anesthesiology ****\n---------------------------------------------\nABCs of anesthesia: always be calm\n---------------------------------------------\nBe kind, be prepared, be professional\n---------------------------------------------\nPain has never been meaningless\n---------------------------------------------\nAnesthesia is awfully simple but when it goes wrong it is simply awful\n---------------------------------------------\nYou can mimic an anesthetic with beta blockers and non-depolarizing muscle relaxants, but the results will be horrifying\n---------------------------------------------\nIf the patient moves, give more anesthetic not muscle relaxant\n---------------------------------------------\nA surgeon's definition of anesthesia is pancuronium; an anesthesiologist's definition is propofol\n---------------------------------------------\nSome people have eight years experience, others have one year of experience eight times\n---------------------------------------------\nAnyone can hold the helm when the sea is calm ~ Publilius Syrus\n---------------------------------------------\nTreat the patient, not the monitor\n---------------------------------------------\nIt is much easier to add (drugs) than to subtract (them)\n---------------------------------------------\nNever promise a patient anything that is not in your power to provide\n---------------------------------------------\nThere is no such thing as 'a little anesthesia'\n---------------------------------------------\nOne rarely gets into trouble when the patient is too deep; one often gets into trouble when the patient is too light\n---------------------------------------------\n**** Surgery ****\n---------------------------------------------\nNever start an anesthetic until you've seen the whites of the surgeon's eyes\n---------------------------------------------\nIf you can't manage the surgeon, you have no business managing the anesthetic\n---------------------------------------------\nShare severe anxieties about a patient with the surgeon\n---------------------------------------------\nThere is an inverse relationship between a surgeon's ability and the frequency that they ask for more muscle relaxant\n---------------------------------------------\nThere is no condition that cannot be made worse by surgery (and/or anesthesia)\n---------------------------------------------\nTo a hammer, everything looks like a nail\n---------------------------------------------\nLack of planning on your part does not constitute an emergency on my part\n---------------------------------------------\nAbility and voice decibel are inversely proportional\n---------------------------------------------\nDon't poke a skunk\n---------------------------------------------\n**** Airway ****\n---------------------------------------------\nThe top five causes of sudden hypoxia in an intubated, ventilated patient are the tube, the tube, the tube, the tube, and the tube\n---------------------------------------------\nThe three things to respect in anesthesia are the airway, the airway, and the airway\n---------------------------------------------\nWith airways devices, when in doubt, take it out\n---------------------------------------------\nNobody dies from failure to intubate the larynx, they die from failure to ventilate and oxygenate\n---------------------------------------------\nIt’s hard to kill a spontaneously breathing patient\n---------------------------------------------\nA patient should not get an emergency surgical airway unless a supraglottic airway is in place\n---------------------------------------------\nThe laryngoscope is a tool, not a weapon\n---------------------------------------------\n100% oxygen has never cured an obstructed airway\n---------------------------------------------\nI've never been sorry I've intubated a patient; I've been sorry about some I didn't\n---------------------------------------------\n**** Procedures ****\n---------------------------------------------\nIf you think you might need invasive monitoring, you will\n---------------------------------------------\nDoubling the cannula diameter gives 16 times the flow rate; use larger cannulas whenever possible\n---------------------------------------------\nA 20g IV in the vein is worth more than two 18g IVs in the sharps bin\n---------------------------------------------\nA bad IV (or epidural) never gets better\n---------------------------------------------\nThere is no such thing as too much IV access\n---------------------------------------------\nThere is no vital organ in the body that cannot be reached with a two inch needle\n---------------------------------------------\nNo block ever fails, some just have to be supplemented more than others\n---------------------------------------------\nYou need more venous access when the surgeon is operating near a blood vessel you can name\n---------------------------------------------\nWhen you have a problem with regional anesthesia, it's the wand not the magician\n---------------------------------------------\nRegional anesthesia is like a lazy cheetah, it can be spotty and may not work\n---------------------------------------------\nIf the monitors say you are in trouble, you probably are";
	if (row == 3) // Option 3
		detailMessage = @"The ASA seal depicts the role of the anesthesiologist in patient care:\n\n“The patient is represented as (a ship) sailing in the troubled sea with the clouds of doubt and waves of terror being guided by the skillful pilot (anesthesiologist) with constant and eternal (stars) vigilance (motto) by the dependable (firmly based lighthouse) knowledge of the art and science of sleep (moon) to a safe (shield) and happy outcome of his voyage through the realms of the unknown. The perfect circle denotes the unity of a closed group (the Society).”\n\n~Paul M. Wood, M.D. (April 13, 1932)";
	if (row == 4) // Option 4
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.nysora.com/"]];
	if (row == 5) // Option 5
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.mhaus.org/"]];
	if (row == 6) // Option 6
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.asahq.org/"]];
	if (row == 7) // Option 7
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://apps.jameslamberg.com/donate_gas_guide.html"]];
	if (row == 8) // Option 8
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