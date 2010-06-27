//
//  AustraliaDetailViewController.m
//  SegmentedControlExample
//
//  Created by Marcus Crafter on 26/05/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "AustraliaDetailViewController.h"


@implementation AustraliaDetailViewController

@synthesize picture;

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Strahan";

    self.picture.layer.borderWidth  = 1.0f;
    self.picture.layer.cornerRadius = 5.0f;
}

- (void)viewDidUnload {
    self.picture = nil;
    [super viewDidLoad];
}

@end
