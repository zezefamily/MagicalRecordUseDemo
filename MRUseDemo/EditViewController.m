//
//  EditViewController.m
//  MRUseDemo
//
//  Created by zezefamily on 15/7/27.
//  Copyright (c) 2015年 zezefamily. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *age;

@end

@implementation EditViewController
- (IBAction)btnClick:(UIButton *)btn
{
    NSInteger tag = btn.tag - 300;
    if(tag == 0){
//    添加
        
    }else if (tag == 1){
//    编辑
        
    }else if (tag == 2){
//    删除
        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
