//
//  WebViewAutoScroll.m
//  chameleon
//
//  Created by Foreveross on 16/8/30.
//
//

#import "WebViewAutoScroll.h"
#import "AppDelegate.h"

static BOOL isInvalidated = NO;
//false
@interface WebViewAutoScroll()<UIScrollViewDelegate>

@end

@implementation WebViewAutoScroll

- (void)enable:(CDVInvokedUrlCommand *)command{
    if (!isInvalidated) {
        [AppDelegate instance].viewController.webView.scrollView.delegate = nil;
    }
}

- (void)disable:(CDVInvokedUrlCommand *)command{
    if (!isInvalidated) {
        [AppDelegate instance].viewController.webView.scrollView.delegate = self;
    }
}

- (void)invalidate:(CDVInvokedUrlCommand *)command{
    [AppDelegate instance].viewController.webView.scrollView.delegate = self;
    isInvalidated = YES;
}
    
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return nil;
}

@end
