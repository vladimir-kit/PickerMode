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

@property (strong, nonatomic) IBOutlet FirstView *firstView;

@end


@implementation FirstController

#pragma mark - UIViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    [[self navigationItem] setTitle:@"Hello"];
    [[[self firstView] labelDescription] setText:@"Hello Vladimir! :)"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
