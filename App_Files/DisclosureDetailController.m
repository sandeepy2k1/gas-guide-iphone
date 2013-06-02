// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureDetailController.m
//  Gas Guide iOS App
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0
//  Updated with assistance by Ravi Chokshi 02Oct12 v3.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "DisclosureDetailController.h"

@implementation DisclosureDetailController
@synthesize label;
@synthesize message;
- (void)viewWillAppear:(BOOL)animated {
    label.text = message;
	
	// Reset Scrolling With Each Item Load
	[label scrollRectToVisible:CGRectMake(0, 0, 1, 1) animated:NO];
	
    [super viewWillAppear:animated];
}
- (void)viewDidUnload {
    self.label = nil;
    self.message = nil;
}
- (void)dealloc {
    [label release];
    [message release];
    [super dealloc];
}
@end