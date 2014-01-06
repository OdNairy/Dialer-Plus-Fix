#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface DialerController
-(void)phonePadDeleteLastDigit:(id)digit;
-(UIView*)dialerView;
@end

%hook DialerController
-(void)phonePad:(id)pad replaceLastDigitWithString:(id)string{
	NSString* text = [[[[self dialerView].subviews[2] subviews] lastObject] text];
	if ([string isEqualToString:@"+"] &&
		[text isEqualToString:@"(0  )"]){
		[self phonePadDeleteLastDigit:0];
	}
	%orig;
}
%end