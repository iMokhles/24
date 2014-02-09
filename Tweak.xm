#import "substrate.h"

#define DARK30_COLOR [UIColor colorWithRed:30.0f/255.0f green:30.0f/255.0f blue:30.0f/255.0f alpha:1.0f]
#define DARK40_COLOR [UIColor colorWithRed:40.0f/255.0f green:40.0f/255.0f blue:40.0f/255.0f alpha:1.0f]
#define DARK37_COLOR [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f]
#define DARK45_COLOR [UIColor colorWithRed:45.0f/255.0f green:45.0f/255.0f blue:45.0f/255.0f alpha:1.0f]

#define YOLO [UIColor grayColor]
#define ASS [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]

//remember, UIToolbar and UINavigationbar should be 30, bg of UIView & UITableView 40, and cells should be 37.

#pragma mark black keyboard thxac3xxilybabe

%hook UIKBRenderConfig

- (BOOL)lightKeyboard{
    return NO;
}

%end

#pragma mark UITableView

%hook UITableView

- (void)setBackgroundColor:(id)arg1{
	%orig(DARK40_COLOR);
}

- (void)setSeparatorColor:(id)arg1{
    %orig(DARK45_COLOR);
}


%end

#pragma mark UITableViewCell

%hook UITableViewCell

- (id)backgroundColor{
	return DARK37_COLOR;
}

- (void)setBackgroundColor:(id)arg1{
	%orig(DARK37_COLOR);
}

- (void)setTextColor:(id)arg1{
	%orig(DARK37_COLOR);
}

- (id)textColor{
	return [UIColor whiteColor]; //This could use darkening.
}

%end

#pragma mark UINavigationBar

%hook UINavigationBar

- (id)backgroundColor{
	return DARK30_COLOR;
}
%end

#pragma mark UIToolbar

%hook UIToolbar

- (void)_setBarTintColor:(id)arg1 force:(BOOL)arg2{
	return;
}

- (void)setTintColor:(id)arg1{
	return;
}

- (void)setBarTintColor:(id)arg1{
	return;
}

- (id)barTintColor{
	return DARK30_COLOR;
}

%end

%hook UITextField

- (id)backgroundColor {
	return DARK30_COLOR;
}

- (void)setBackgroundColor:(id)arg1{
	%orig(DARK30_COLOR);
}

%end

%hook UILabel

- (void)_setColor:(id)arg1{
	%orig(YOLO);
}

- (void)_setTextColor:(id)arg1{
	%orig(YOLO);
}

%end

%hook UIView

- (id)tintColor {
	return ASS;
}

%end
