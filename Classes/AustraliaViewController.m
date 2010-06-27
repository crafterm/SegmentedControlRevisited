//
//  MyViewController2.m
//  SegmentedControlExample
//
//  Created by Marcus Crafter on 26/05/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "AustraliaViewController.h"
#import "AustraliaDetailViewController.h"

@implementation AustraliaViewController

- (id)initWithStyle:(UITableViewStyle)style {
    if (self = [super initWithStyle:style]) {
        self.title = @"Australia";
    }
    return self;
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"South Australia";
            break;
        case 1:
            cell.textLabel.text = @"Victoria";
            break;
        case 2:
            cell.textLabel.text = @"New South Wales";
            break;
        case 3:
            cell.textLabel.text = @"Australian Capital Territory";
            break;
        case 4:
            cell.textLabel.text = @"Northern Territory";
            break;
        case 5:
            cell.textLabel.text = @"Western Australia";
            break;
        case 6:
            cell.textLabel.text = @"Tasmania";
            break;
    }

    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // In this example, any selection to the table will push on the detail view controller showing the same photo
    UIViewController * detailViewController = [[AustraliaDetailViewController alloc] initWithNibName:@"AustraliaDetailViewController" bundle:nil];
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
}


@end

