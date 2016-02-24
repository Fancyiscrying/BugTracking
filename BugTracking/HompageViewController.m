//
//  HompageViewController.m
//  BugTracking
//
//  Created by Fancy on 16/2/23.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "HompageViewController.h"
#import "AFNetworking.h"
static NSString *const BaseURLString = @"http://www.raywenderlich.com/downloads/weather_sameple/";
@interface HompageViewController ()
- (IBAction)upLoadData:(id)sender;
- (IBAction)downLoadData:(id)sender;
- (IBAction)downLoadPicture:(id)sender;
- (IBAction)xmlRequest:(id)sender;
- (IBAction)plistRequest:(id)sender;
- (IBAction)jsonRequest:(id)sender;
@end

@implementation HompageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma 上传数据
- (IBAction)upLoadData:(id)sender {
}

#pragma 下载数据

- (IBAction)downLoadData:(id)sender {
}
#pragma 下载图片
- (IBAction)downLoadPicture:(id)sender {
}

- (IBAction)xmlRequest:(id)sender {
}

- (IBAction)plistRequest:(id)sender {
}

- (IBAction)jsonRequest:(id)sender {
    
    
    NSString *weatherUrl = [NSString stringWithFormat:@"%@weather.php?format=json",BaseURLString];
    NSURL *url = [NSURL URLWithString:weatherUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    

    
   
    
}
@end
