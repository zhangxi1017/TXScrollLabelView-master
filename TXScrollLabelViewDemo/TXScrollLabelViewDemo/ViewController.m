//
//  ViewController.m
//  TXScrollLabelViewDemo
//
//  Created by tingxins on 20/10/2016.
//  Copyright © 2016 tingxins. All rights reserved.
//

#import "ViewController.h"
#import "TXScrollLabelView.h"

@interface ViewController ()

@property (weak, nonatomic) TXScrollLabelView *scrollLabelView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setViewInfos];
    
    [self setSubviews];
    self.view.backgroundColor = [UIColor orangeColor];
    
}

- (void)setViewInfos {
    self.navigationController.navigationBar.translucent = NO;
}

- (void)setSubviews {
    
    for (int options = 0; options < 4; ++ options) {
        NSString *scrollTitle = @"If you don't control the image server you're using, you may not be able to change the URL when its content is updated. This is the case for Facebook avatar URLs for instance. In such case, you may use the SDWebImageRefreshCached flag. This will slightly degrade the performance but will respect the HTTP caching control headers";
        //options 是 TXScrollLabelViewType 枚举， 此处为了方便举例
        TXScrollLabelView *scrollLabelView = [TXScrollLabelView tx_setScrollTitle:scrollTitle scrollType:options scrollVelocity:2.0 options:UIViewAnimationOptionTransitionFlipFromTop];
        //布局
        scrollLabelView.tx_scrollContentSize = CGRectMake(50, 100 * (options + 0.7), 250, 30);
        scrollLabelView.tx_centerX = [UIScreen mainScreen].bounds.size.width * 0.5;
        //偏好设置
        scrollLabelView.backgroundColor = [UIColor blackColor];
        scrollLabelView.layer.cornerRadius = 5;
        [self.view addSubview:scrollLabelView];
        
        [scrollLabelView beginScrolling];
        self.scrollLabelView = scrollLabelView;
    }
}

@end
