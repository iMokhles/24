#import "substrate.h"

#define DARK_COLOR [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f]

#pragma mark black keyboard thxac3xxilybabe

%hook UIKBRenderConfig

- (BOOL)lightKeyboard{
    return NO;
}

%end

#pragma mark UITableView

%hook UITableView

- (void)setBackgroundColor:(id)arg1{
	%orig(DARK_COLOR);
}

%end

#pragma mark UITableViewCell

%hook UITableViewCell

- (id)backgroundColor{
	return DARK_COLOR;
}

- (void)setBackgroundColor:(id)arg1{
	%orig(DARK_COLOR);
}

- (void)setTextColor:(id)arg1{
	%orig(DARK_COLOR);
}

- (id)textColor{
	return [UIColor whiteColor]; //This could use darkening.
}

%end

#pragma mark UINavigationBar

%hook UINavigationBar

- (id)backgroundColor{
	return DARK_COLOR;
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
	return DARK_COLOR;
}

%end

%hook UITextField

- (id)backgroundColor {
	return DARK_COLOR;
}

- (void)setBackgroundColor:(id)arg1{
	%orig(DARK_COLOR);
}


%end
