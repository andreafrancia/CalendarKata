//
//  CalendarViewController.m
//  CalendarKata
//
//  Created by Andrea Francia on 11/14/13.
//  Copyright (c) 2013 Andrea Francia. All rights reserved.
//

#import "CalendarViewController.h"

@implementation CalendarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    // Configure the cell...
    cell.textLabel.text = @"giorno";
    
    return cell;
}
@end
