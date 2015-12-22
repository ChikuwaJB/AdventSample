#import <Preferences/Preferences.h>

@interface AdventSampleListController: PSListController {
}
@end

@implementation AdventSampleListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"AdventSample" target:self] retain];
	}
	return _specifiers;
}
@end

@protocol PreferencesTableCustomView
- (id)initWithSpecifier:(PSSpecifier *)specifier;
- (CGFloat)preferredHeightForWidth:(CGFloat)width;
@end

@interface FirstCustomCell : PSTableCell <PreferencesTableCustomView> {
    UILabel *label;
}
@end

@implementation FirstCustomCell
- (id)initWithSpecifier:(PSSpecifier *)specifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell" specifier:specifier];
    if (self) {
        label = [[UILabel alloc] initWithFrame:[self frame]];
        [label setLineBreakMode:UILineBreakModeWordWrap];
        [label setNumberOfLines:0];
        [label setText:@"HelloWorld!"];
        [label setBackgroundColor:[UIColor clearColor]];
        [label setShadowColor:[UIColor whiteColor]];
        [label setShadowOffset:CGSizeMake(0,1)];
        [label setTextAlignment:UITextAlignmentCenter];
        [self addSubview:label];
        [label release];
    }
    return self;
}

- (CGFloat)preferredHeightForWidth:(CGFloat)width {
    return 60.f;
}
@end
