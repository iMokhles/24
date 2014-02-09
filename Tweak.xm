#import "substrate.h"

#define DARK_COLOR [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f]

#pragma mark black keyboard thxac3xxilybabe

%hook UIKBRenderConfig

- (BOOL)lightKeyboard {
    return NO;
}

%end

#pragma mark UITableView

%hook UITableView

- (void)setBackgroundColor:(id)arg1{
	arg1 = DARK_COLOR;

	return %orig;
}

%end

#pragma mark UITableViewCell

%hook UITableViewCell

- (id)backgroundColor {
	return DARK_COLOR;
}

- (void)setBackgroundColor:(id)arg1{
		arg1 = DARK_COLOR;

	return %orig;
}

- (void)setTextColor:(id)arg1{
	arg1 = DARK_COLOR;

	return %orig;
}

- (id)textColor{
	return [UIColor whiteColor];
}

%end

#pragma mark UINavigationBar

%hook UINavigationBar

- (id)backgroundColor {
	return DARK_COLOR;
}



%end

#pragma mark UIToolbar

%hook UIToolbar

- (void)_setBarTintColor:(id)arg1 force:(BOOL)arg2{
	arg1 = DARK_COLOR;
	arg2 = YES;

	return;
}

- (void)setTintColor:(id)arg1{
	arg1 = DARK_COLOR;

	return;
}


- (void)setBarTintColor:(id)arg1{
	arg1 = DARK_COLOR;

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
		arg1 = DARK_COLOR;

	return %orig;
}


%end
