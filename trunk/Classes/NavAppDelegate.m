// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  NavAppDelegate.m
//  Gas Guide iOS App
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "NavAppDelegate.h"

@implementation NavAppDelegate

@synthesize window;
@synthesize navController; 

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	// First Run Prompt Alert Message
	int x = [[NSUserDefaults standardUserDefaults] integerForKey:@"Gas_Guide_v100"];
	if( x == 1 )
	{}
	else
	{
		[[NSUserDefaults standardUserDefaults]setInteger:1 forKey:@"Gas_Guide_v100"];
		[[NSUserDefaults standardUserDefaults]synchronize];	
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"Gas Guide is intended for health care professionals only.\n\nPlease read the disclaimer before using this application.\n\nContact James Lamberg with any questions, comments, or concerns.\njames.lamberg@gmail.com\n\nThank You!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	
    // Override point for customization after application launch
    [window addSubview: navController.view];
    [window makeKeyAndVisible];
}
- (void)dealloc {
    [window release];
    [navController release];
    [super dealloc];
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