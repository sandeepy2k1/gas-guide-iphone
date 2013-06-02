// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  Gas_GuideViewController.h
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import <UIKit/UIKit.h>

#import "SecondLevelViewController.h"
#import "DisclosureButtonController01.h"
#import "DisclosureButtonController02.h"
#import "DisclosureButtonController03.h"
#import "DisclosureButtonController04.h"
#import "DisclosureButtonController05.h"
#import "DisclosureButtonController06.h"
#import "DisclosureButtonController07.h"
#import "DisclosureButtonController08.h"
#import "DisclosureButtonController09.h"
#import "DisclosureButtonController10.h"
#import "DisclosureButtonController11.h"
#import "DisclosureButtonController12.h"
#import "DisclosureButtonController13.h"

@interface Gas_GuideViewController : UIViewController<UITableViewDataSource , UITableViewDelegate>
{

    IBOutlet UITableView *tbl;
     NSArray *controllers;
}

@property (nonatomic , retain) IBOutlet UITableView *tbl;
@property (nonatomic, retain) NSArray *controllers;

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