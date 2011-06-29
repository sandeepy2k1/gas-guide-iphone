// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureDetailController.m
//  Gas Guide iOS App
//
//	Original Modification by James Lamberg 21Nov09
//	Updated by James Lamberg 19Dec09 v1.0
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