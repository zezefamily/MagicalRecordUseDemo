
//
//  RootViewController.m
//  MRUseDemo
//
//  Created by zezefamily on 15/7/27.
//  Copyright (c) 2015年 zezefamily. All rights reserved.
//

#import "RootViewController.h"
#import "Person.h"
#import "EditViewController.h"

@interface RootViewController ()
{
    
}

@end
@implementation RootViewController
static NSString *cell0 = @"cell0";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.tableView.tableFooterView = [[UIView alloc]init];
    
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    获取所有数据
    return [Person MR_findAll].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell0  forIndexPath:indexPath];
    Person *person = [Person MR_findAll][indexPath.row];
    
    UILabel *first = (UILabel *)[cell viewWithTag:100];
    first.text = person.fristname;
    UILabel *last = (UILabel *)[cell viewWithTag:101];
    last.text = person.lastname;
    UILabel *age = (UILabel *)[cell viewWithTag:102];
    age.text = [NSString stringWithFormat:@"%@",person.age];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Person *person = [Person MR_findAll][indexPath.row];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditViewController *editVC = [story instantiateViewControllerWithIdentifier:@"editVC"];
    [self.navigationController pushViewController:editVC animated:YES];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
