# DKWebViewController

`DKWebViewController` is a UIViewController class that contains a
UIWebView. The scrolling shadows have been removed from inside of the
UIWebView so that it doesn't have the appeaerance of the UIWebView.

It is used in the apps written by [Mostly Disco](http://www.mostlydisco.com)

## Installation

Copy the files into to your project folder, and add them to your XCode
project then include `DKWebViewController.h` somewhere in your codebase

## Usage

    // Create the web view controller
    DKWebViewController * webViewController = [[DKWebViewController alloc] initWithStringURL:@"http://google.com"];

    // Add it to the navigation stack
    [self.navigationController pushViewController:webViewController animated:YES];

    // Release the webview controller
    [webViewController release];

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Send me a pull request. Bonus points for topic branches.

## Contributers

* [Keith Pitt](http://www.keithpitt.com)

## License

DKWebViewController is licensed under the MIT License:

  Copyright (c) 2011 Keith Pitt (http://www.keithpitt.com/)

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
