// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  ImageViewController.m
//  Gas Guide iOS App
//  Open Source Release 2013
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0 (First Release)
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import "ImageViewController.h"

@implementation ImageViewController

@synthesize ImageName;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSString *Path = [[NSBundle mainBundle] bundlePath];
	NSString *ImagePath = [Path stringByAppendingPathComponent:ImageName];
	UIImage *tempImg = [[UIImage alloc] initWithContentsOfFile:ImagePath];
	[imgView setImage:tempImg];
	[tempImg release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[ImageName release];
	[imgView release];
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