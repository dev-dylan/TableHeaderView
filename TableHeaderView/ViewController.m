//
//  ViewController.m
//  TableHeaderView
//
//  Created by FDylan on 2017/8/2.
//  Copyright © 2017年 Shanghai DataSeed Information Technology Co.,Ltd. All rights reserved.
//

#import "ViewController.h"
#import "FDTableHeaderView.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    UINib *nib = [UINib nibWithNibName:@"FDTableHeaderView" bundle:nil];
    FDTableHeaderView *header = [nib instantiateWithOwner:nil options:nil][0];
    header.autoresizingMask = UIViewAutoresizingNone;
    self.tableView.tableHeaderView = header;
    
    NSLog(@"这是一个断点分割Log");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [@(indexPath.row) stringValue];
    return cell;
}

@end
