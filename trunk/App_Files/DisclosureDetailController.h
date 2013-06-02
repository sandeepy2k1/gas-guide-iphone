// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
//  DisclosureDetailController.h
//  Gas Guide iOS App
//
//  Original Modification by James Lamberg 21Nov09
//  Updated by James Lamberg 19Dec09 v1.0
//  Updated with assistance by Ravi Chokshi 02Oct12 v3.0
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

#import <Foundation/Foundation.h>

@interface DisclosureDetailController : UIViewController {
    UITextView    *label;
    NSString    *message;

}
@property (nonatomic, retain) IBOutlet UITextView *label;
@property (nonatomic, retain) NSString *message;
@end