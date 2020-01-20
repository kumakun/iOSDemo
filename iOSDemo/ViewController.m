//
//  ViewController.m
//  iOSDemo
//
//  Created by bruce on 2020/1/15.
//  Copyright © 2020 kumapower. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@import Flutter;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIView *container;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.btn addTarget:self action:@selector(showFlutter) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showFlutter {
    FlutterEngine *flutterEngine = ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
//    [self presentViewController:flutterViewController animated:YES completion:nil];
    [self.container addSubview:flutterViewController.view];
    flutterViewController.view.frame = self.container.bounds;
    [self addChildViewController:flutterViewController];
    [flutterViewController didMoveToParentViewController:self];
    
    
}
@end
