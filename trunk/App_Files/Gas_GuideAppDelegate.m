// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  Gas_GuideAppDelegate.m
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "Gas_GuideAppDelegate.h"

#import "Gas_GuideViewController.h"

@implementation Gas_GuideAppDelegate
@synthesize nav;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
	// First Run Prompt Alert Message
	int x = [[NSUserDefaults standardUserDefaults] integerForKey:@"Gas_Guide_v320"];
	if( x == 1 )
	{}
	else
	{
		[[NSUserDefaults standardUserDefaults]setInteger:1 forKey:@"Gas_Guide_v320"];
		[[NSUserDefaults standardUserDefaults]synchronize];
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome!" message:@"Gas Guide is intended for health care professionals only. Read the disclaimer before using this application.\n\nGas Guide is free of charge. Donations are much appreciated.\n\nContact James Lamberg with any questions or concerns.\njames.lamberg@gmail.com" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
    
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[[Gas_GuideViewController alloc] initWithNibName:@"Gas_GuideViewController_iPhone" bundle:nil] autorelease];
    } else {
        self.viewController = [[[Gas_GuideViewController alloc] initWithNibName:@"Gas_GuideViewController_iPad" bundle:nil] autorelease];
    }
    
    self.nav=[[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.window.rootViewController = self.nav;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
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