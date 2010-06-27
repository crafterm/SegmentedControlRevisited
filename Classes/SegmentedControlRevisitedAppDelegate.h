//
//  SegmentedControlRevisitedAppDelegate.h
//  SegmentedControlRevisited
//
//  Created by Marcus Crafter on 26/06/10.
//  Copyright Red Artisan 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SegmentsController;

@interface SegmentedControlRevisitedAppDelegate : NSObject <UIApplicationDelegate> {
    SegmentsController     * segmentsController;
    UISegmentedControl     * segmentedControl;

    UIWindow               * window;
}

@property (nonatomic, retain) SegmentsController     * segmentsController;
@property (nonatomic, retain) UISegmentedControl     * segmentedControl;

@property (nonatomic, retain) IBOutlet UIWindow      * window;

@end

