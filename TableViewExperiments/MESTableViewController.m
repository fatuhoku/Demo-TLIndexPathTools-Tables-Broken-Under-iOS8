//
//  MESTableViewController.m
//  TableViewExperiments
//
//  Created by Hok Shun Poon on 02/09/2014.
//  Copyright (c) 2014 Hok Shun Poon. All rights reserved.
//

#import "MESTableViewController.h"

@interface MESTableViewController ()
@end

@implementation MESTableViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];

    self.indexPathController.dataModel = [[TLIndexPathDataModel alloc] initWithItems:@[@"One", @"Two"]];
}

#pragma mark -

- (NSString *)tableView:(UITableView *)tableView cellIdentifierAtIndexPath:(NSIndexPath *)indexPath {
    return @"ruid_cell";
}

- (void)tableView:(UITableView *)tableView configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    NSString *text = [self.indexPathController.dataModel itemAtIndexPath:indexPath];

    cell.textLabel.text = text;
    cell.detailTextLabel.text = text;
}

@end
