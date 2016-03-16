//
//  MainViewController.m
//  PQActionSheet
//
//  Created by 黄盼青 on 16/3/3.
//  Copyright © 2016年 temobi. All rights reserved.
//

#import "MainViewController.h"
#import "PQActionSheet.h"

@interface MainViewController () <PQActionSheetDelegate>

@property (strong,nonatomic) PQActionSheet *actionSheet;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *bgImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bg.jpg"]];
    bgImageView.frame = [[UIScreen mainScreen]bounds];
    [self.view addSubview:bgImageView];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    [btn setTitle:@"Show" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:20.0f]];
    [btn addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
//    _actionSheet = [[PQActionSheet alloc]initWithTitle:nil
//                                              delegate:nil
//                                     cancelButtonTitle:@"取消"
//                                     otherButtonTitles:@"拍照",@"从手机相册选择",@"保存图片",nil];
//    
//    
//    _actionSheet.delegate = self;
    
    
    _actionSheet = [[PQActionSheet alloc]initWithTitle:nil clickedAtIndex:^(NSInteger index) {
        
        NSLog(@"选中了:%ld",index);
        
        
    } cancelButtonTitle:@"取消" otherButtonTitles:@"拍照",@"从手机相册选择",nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)buttonClick {
    
    [_actionSheet show];
    
}


-(void)actionSheet:(PQActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSLog(@"选中了:%ld",buttonIndex);
    
}

@end
