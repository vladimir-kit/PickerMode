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

    [[_firstView labelDescription] setText:@"Hello Vladimir! :)"];

    [[_firstView viewTouch] addTarget:self action:@selector(viewTouch:)];

    [_firstView addGestureRecognizer:[_firstView viewTouch]];

    [[_firstView datePicker] setMaximumDate:[NSDate date]];
    [[_firstView textField] setInputView:[[self firstView] datePicker]];

    [self getMessage:^(NSString *message) {
        NSLog(@"----- %@ -----", message);
    }];


    [self getMessage1:^(NSString *message1, NSString *message2) {
        NSLog(@"%@", message1);
        NSLog(@"%@", message2);
    }];
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

#pragma mark -
// К примеру есть метод, который вернет 1 сообщение
- (void)getMessage:(void (^) (NSString *message))mess {
    mess (@"Hello World");
}

// К примеру есть метод, который вернет 2 сообщения
- (void)getMessage1:(void (^) (NSString *message1, NSString *message2))mess {
    mess (@"Message1", @"Message2");
}

@end
