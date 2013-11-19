//
//  CalendarViewController.m
//  CalendarKata
//
//  Created by Andrea Francia on 11/14/13.
//  Copyright (c) 2013 Andrea Francia. All rights reserved.
//

#import "CalendarViewController.h"
#import "Calendar.h"

@implementation CalendarViewController {
    Calendar * _calendar;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _calendar = [[Calendar alloc]init];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_calendar numberOfRows];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    // Configure the cell...
    cell.textLabel.text = [_calendar textAtRow:indexPath.row];
    
    return cell;
}
@end
