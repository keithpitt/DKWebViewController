//
//  DKWebViewController.m
//  DiscoKit
//
//  Created by Keith Pitt on 5/04/11.
//  Copyright 2011 DiscoKit. All rights reserved.
//

#import "DKWebViewController.h"

@implementation DKWebViewController

@synthesize localWebView;

- (id)initWithStringURL:(NSString *)baseURL {
    
    if ((self = [super init])) {
        url = baseURL;
    }
    
	return self;
    
}

- (void)viewDidLoad {
	
	[super viewDidLoad];
	
	localWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    localWebView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    localWebView.delegate = self;
	localWebView.scalesPageToFit = true;
    localWebView.backgroundColor = [UIColor clearColor];
    localWebView.opaque = NO;
    
    // Hide the images that make the shadows
    for(UIView *innerView in [[[localWebView subviews] objectAtIndex:0] subviews]) { 
        if([innerView isKindOfClass:[UIImageView class]]) { innerView.hidden = YES; } 
    }
	
	[self.view addSubview:localWebView];
	
	[self.localWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
	
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
	// Starting the load, show the activity indicator in the status bar
	[UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
	// Finished loading, hide the activity indicator in the status bar
	[UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
	// Load error, hide the activity indicator in the status bar
	[UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error Loading Page", nil)
                                                         message:[error localizedDescription]
                                                        delegate:nil
                                               cancelButtonTitle:NSLocalizedString(@"OK", nil)
                                               otherButtonTitles:nil];
    
    [alertView show];
    [alertView release];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void)viewDidUnload {
    
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    self.localWebView = nil;
    
}

- (void)dealloc {
    
    self.localWebView = nil;
    
    [super dealloc];
	
}

@end
