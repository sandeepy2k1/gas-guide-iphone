// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  ImageViewController.h
//  Gas Guide iOS App
//
//	Original Modification by James Lamberg 21Nov09
//	Updated by James Lamberg 19Dec09 v1.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController {

	IBOutlet UIImageView *imgView;
	NSString *ImageName;
}

@property (nonatomic, retain) NSString *ImageName;

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