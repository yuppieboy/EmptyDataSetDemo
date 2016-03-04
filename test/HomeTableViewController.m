//
//  HomeTableViewController.m
//  test
//
//  Created by WangPeng on 16/1/13.
//  Copyright © 2016年 WangPeng. All rights reserved.
//

#import "HomeTableViewController.h"
#import "HomeTableViewCell.h"
#import "UIScrollView+EmptyDataSet.h"

@implementation HomeTableViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.identify=@"HomeTableViewCell";
    [self setLoading:YES];
    [self performSelector:@selector(modelchange) withObject:nil afterDelay:1];
}

-(void)modelchange
{
    [self setLoading:NO];
    self.numberInSection=0;
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.numberInSection;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:self.identify];

    return cell;
}



@end
