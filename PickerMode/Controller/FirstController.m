//
//  FristController.m
//  PickerMode
//
//  Created by Alex on 3/16/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import "FirstController.h"
#import "FirstView.h"

@interface FirstController ()

#pragma mark - UIView
@property (strong, nonatomic) IBOutlet FirstView *firstView;

@end


@implementation FirstController

#pragma mark - UIViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    [[self navigationItem] setTitle:NSLocalizedString(@"Hello", nil)];

    _firstView.datePicker = [[UIDatePicker alloc] init];

    UITapGestureRecognizer *viewTouch = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTouch:)];
    [[self firstView] addGestureRecognizer:viewTouch];

    [[[self firstView] labelDescription] setText:@"Hello Vladimir! :)"];

    [[[self firstView] datePicker] setMaximumDate:[NSDate date]];
    [[[self firstView] textField] setInputView:[[self firstView] datePicker]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITapGestureRecognizer
- (void)viewTouch:(UITapGestureRecognizer *)recognizer {
    NSString *date = [NSString stringWithFormat:@"%@", [[[self firstView] datePicker] date]];
    [[[self firstView] labelDescription] setText:date];
    [[[self firstView] textField] resignFirstResponder];
}

@end
