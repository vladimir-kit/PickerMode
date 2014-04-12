//
//  FristView.m
//  PickerMode
//
//  Created by Alex on 3/16/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

- (UIDatePicker *)datePicker {
    if (!_datePicker) {
        _datePicker = [[UIDatePicker alloc] init];
    }
    return _datePicker;
}

- (UITapGestureRecognizer *)viewTouch {
    if (!_viewTouch) {
        _viewTouch = [[UITapGestureRecognizer alloc] init];
    }
    return _viewTouch;
}

@end
