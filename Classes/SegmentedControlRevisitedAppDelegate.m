//
//  SegmentedControlRevisitedAppDelegate.m
//  SegmentedControlRevisited
//
//  Created by Marcus Crafter on 26/06/10.
//  Copyright Red Artisan 2010. All rights reserved.
//

#import "SegmentedControlRevisitedAppDelegate.h"

#import "SegmentsController.h"

#import "AustraliaViewController.h"
#import "ItalyViewController.h"

@interface SegmentedControlRevisitedAppDelegate ()
- (NSArray *)segmentViewControllers;
- (void)firstUserExperience;
@end

@implementation SegmentedControlRevisitedAppDelegate

@synthesize window, segmentsController, segmentedControl;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    NSArray * viewControllers = [self segmentViewControllers];
    
    UINavigationController * navigationController = [[[UINavigationController alloc] init] autorelease];
    self.segmentsController = [[SegmentsController alloc] initWithNavigationController:navigationController viewControllers:viewControllers];
    
    self.segmentedControl = [[UISegmentedControl alloc] initWithItems:[viewControllers arrayByPerformingSelector:@selector(title)]];
    self.segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    
    [self.segmentedControl addTarget:self.segmentsController
                              action:@selector(indexDidChangeForSegmentedControl:)
                    forControlEvents:UIControlEventValueChanged];
    
    [self firstUserExperience];
    
    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];
    
    return YES;
}

#pragma mark -
#pragma mark Segment Content

- (NSArray *)segmentViewControllers {
    UIViewController * italy     = [[ItalyViewController alloc] initWithNibName:@"ItalyViewController" bundle:nil];
    UIViewController * australia = [[AustraliaViewController alloc] initWithStyle:UITableViewStyleGrouped];
    
    NSArray * viewControllers = [NSArray arrayWithObjects:italy, australia, nil];
    [australia release]; [italy release];
    
    return viewControllers;
}

- (void)firstUserExperience {
    self.segmentedControl.selectedSegmentIndex = 0;
    [self.segmentsController indexDidChangeForSegmentedControl:self.segmentedControl];
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    self.segmentedControl   = nil;
    self.segmentsController = nil;
    [window release];
    [super dealloc];
}


@end
