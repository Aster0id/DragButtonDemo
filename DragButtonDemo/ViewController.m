//
//  ViewController.m
//  DragButtonDemo
//
//  Created by Aster0id on 14-5-19.
//  Copyright (c) 2014年 Self.牛萌. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+NMCategory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(5, 100,60, 60)];
    btn.backgroundColor = [UIColor redColor];
    btn.tag = 0;
    btn.layer.cornerRadius = 8;
    [btn setDragEnable:YES];
    [btn setAdsorbEnable:YES];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(5, 200,60, 60)];
    btn1.backgroundColor = [UIColor blackColor];
    btn1.tag = 1;
    btn1.layer.cornerRadius = 8;
    [btn1 setDragEnable:YES];
    [btn1 setAdsorbEnable:NO];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(5, 300,60, 60)];
    btn2.backgroundColor = [UIColor colorWithRed:.8 green:.8 blue:.8 alpha:1];
    btn2.tag = 3;
    btn2.layer.cornerRadius = 8;
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)showTag:(UIButton *)sender
{
    NSLog(@"button.tag >> %@",@(sender.tag));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
