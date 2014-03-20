//
//  FristView.h
//  PickerMode
//
//  Created by Alex on 3/16/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstView : UIView

#pragma mark - UILabel
@property (weak, nonatomic) IBOutlet UILabel *labelDescription;

#pragma mark - UITextField
@property (weak, nonatomic) IBOutlet UITextField *textField;

#pragma mark - UIDatePicker
@property (strong, nonatomic) UIDatePicker *datePicker;

@end
