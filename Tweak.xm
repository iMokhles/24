#import "substrate.h"

#pragma mark black keyboard thxac3xxilybabe

%hook UIKBRenderConfig

- (BOOL)lightKeyboard {
    return NO;
}

%end

#pragma mark UITableView

%hook UITableView

- (void)setBackgroundColor:(id)arg1{
	arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];

	return %orig;
}

%end

#pragma mark UITableViewCell

%hook UITableViewCell

- (id)backgroundColor {
	return [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];
}

- (void)setBackgroundColor:(id)arg1{
		arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];

	return %orig;
}

- (void)setTextColor:(id)arg1{
	arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];

	return %orig;
}

- (id)textColor{
	return [UIColor whiteColor];
}

%end

#pragma mark UINavigationBar

%hook UINavigationBar

- (id)backgroundColor {
	return [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];
}



%end

#pragma mark UIToolbar

%hook UIToolbar

- (void)_setBarTintColor:(id)arg1 force:(BOOL)arg2{
	arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];
	arg2 = YES;

	return;
}

- (void)setTintColor:(id)arg1{
	arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];

	return;
}


- (void)setBarTintColor:(id)arg1{
	arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];

	return;
}

- (id)barTintColor{
	return [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];
}

%end

%hook UITextField

- (id)backgroundColor {
	return [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];
}

- (void)setBackgroundColor:(id)arg1{
		arg1 = [UIColor colorWithRed:37.0f/255.0f green:37.0f/255.0f blue:37.0f/255.0f alpha:1.0f];

	return %orig;
}


%end
