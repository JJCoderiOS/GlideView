//
//  DeliverTableViewController.m
//  CareerdreamNew
//
//  Created by 赵祥凯 on 15/11/30.
//  Copyright © 2015年 Careerdream. All rights reserved.
//

#import "DeliverTableViewController.h"
#import "SearchCell.h"

@interface DeliverTableViewController ()

@property (nonatomic,strong)NSMutableArray * dataArr;

@end

@implementation DeliverTableViewController
static NSString * ID = @"cell";
//header重用ID
static NSString * headerID = @"headerID";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 65;
    [self.tableView registerNib:[UINib nibWithNibName:@"SearchCell" bundle:nil] forCellReuseIdentifier:ID];
    self.tableView.tableFooterView = [UIView new];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SearchCell *cell = [tableView dequeueReusableCellWithIdentifier:ID ];
    
    cell.deliver = nil;
    
    // Configure the cell...
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UITableViewHeaderFooterView * view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:headerID];
    view.contentView.backgroundColor = [UIColor clearColor];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

#pragma mark - setters
- (NSMutableArray *)dataArr
{
    if (_dataArr == nil) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}

@end
