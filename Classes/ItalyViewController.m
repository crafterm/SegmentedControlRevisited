//
//  MyViewController1.m
//  SegmentedControlExample
//
//  Created by Marcus Crafter on 24/05/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "ItalyViewController.h"


@implementation ItalyViewController

@synthesize picture;

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
    if (self = [super initWithNibName:nibName bundle:nibBundle]) {
        self.title = @"Italy";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.picture.layer.borderWidth  = 1.0f;
    self.picture.layer.cornerRadius = 5.0f;
}

- (void)viewDidUnload {
    self.picture = nil;
    [super viewDidUnload];
}

@end
