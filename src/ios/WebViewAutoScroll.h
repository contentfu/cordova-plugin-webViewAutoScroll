//
//  WebViewAutoScroll.h
//  chameleon
//
//  Created by Foreveross on 16/8/30.
//
//

#import <Cordova/CDVPlugin.h>

@interface WebViewAutoScroll : CDVPlugin

- (void)enable:(CDVInvokedUrlCommand *)command;
- (void)disable:(CDVInvokedUrlCommand *)command;
/**
 调用此方法会彻底禁用自动滚动，无法再开启和关闭
 */
- (void)invalidate:(CDVInvokedUrlCommand *)command;
@end
