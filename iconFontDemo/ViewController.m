//
//  ViewController.m
//  iconFontDemo
//
//  Created by TOPTEAM on 16/9/12.
//  Copyright © 2016年 TOPTEAM. All rights reserved.
//

#import "ViewController.h"
#import "TBCityIconFont.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *testImageView;
@property (weak, nonatomic) IBOutlet UIButton *testBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     //图标编码是&#xe600，需要转成\U0000e600
    self.testImageView.image =  [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e600", 30, [UIColor redColor])];
    
    [self.testBtn setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e604", 30, [UIColor redColor])] forState:UIControlStateNormal];
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
