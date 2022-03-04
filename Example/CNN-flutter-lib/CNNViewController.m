//
//  CNNViewController.m
//  CNN-flutter-lib
//
//  Created by yuhui.Mr on 03/04/2022.
//  Copyright (c) 2022 yuhui.Mr. All rights reserved.
//

#import "CNNViewController.h"
#import <Flutter/Flutter.h>
@interface CNNViewController ()

@end

@implementation CNNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        FlutterViewController *vc = [[FlutterViewController alloc] init];
        [self presentViewController:vc animated:YES completion:nil];
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
