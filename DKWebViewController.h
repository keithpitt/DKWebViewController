//
//  DKWebViewController.h
//  DiscoKit
//
//  Created by Keith Pitt on 5/04/11.
//  Copyright 2011 DiscoKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKWebViewController : UIViewController <UIWebViewDelegate> {
    
	NSString * url;
    
}

@property (nonatomic, retain) UIWebView * localWebView;

- (id)initWithStringURL:(NSString *)baseURL;

@end