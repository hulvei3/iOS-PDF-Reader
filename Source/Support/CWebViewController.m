//
//  CWebViewController.m
//  iOS-PDF-Reader
//
//  Created by Jonathan Wight on 6/20/12.
//  Copyright 2012 toxicsoftware.com. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are
//  permitted provided that the following conditions are met:
//
//     1. Redistributions of source code must retain the above copyright notice, this list of
//        conditions and the following disclaimer.
//
//     2. Redistributions in binary form must reproduce the above copyright notice, this list
//        of conditions and the following disclaimer in the documentation and/or other materials
//        provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY 2012 SYNTHETIC ``AS IS'' AND ANY EXPRESS OR IMPLIED
//  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
//  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL 2012 SYNTHETIC OR
//  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
//  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
//  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//  The views and conclusions contained in the software and documentation are those of the
//  authors and should not be interpreted as representing official policies, either expressed
//  or implied, of 2012 Synthetic.

#import "CWebViewController.h"

@interface CWebViewController ()
@property (readwrite, nonatomic, strong) NSURL *URL;
@property (readwrite, nonatomic, strong) UIWebView *webView;
@end

@implementation CWebViewController

@synthesize URL = _URL;
@synthesize webView = _webView;

- (id)initWithURL:(NSURL *)inURL
    {
    if ((self = [super initWithNibName:NULL bundle:NULL]) != NULL)
        {
        _URL = inURL;

        _webView = [[UIWebView alloc] initWithFrame:(CGRect){ .size = { 320, 320 } }];
        NSURLRequest *theRequest = [NSURLRequest requestWithURL:_URL];
        [_webView loadRequest:theRequest];
        }
    return(self);
    }

- (void)loadView
    {
    self.view = self.webView;
    }

- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    }

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
    {
    return(YES);
    }

@end
