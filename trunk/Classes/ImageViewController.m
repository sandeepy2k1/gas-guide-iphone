// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  ImageViewController.m
//  Gas Guide iOS App
//
//	Original Modification by James Lamberg 21Nov09
//	Updated by James Lamberg 19Dec09 v1.0
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
// To view a copy of this license, visit: 
// creativecommons.org/licenses/by-nc-sa/3.0/
// or send a letter to: 
// Creative Commons
// 444 Castro Street, Suite 900
// Mountain View, California, 94041, USA.
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *