//
// QR Code Generator - generates UIImage from NSString
//
// Copyright (C) 2012 http://moqod.com Andrew Kopanev <andrew@moqod.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy 
// of this software and associated documentation files (the "Software"), to deal 
// in the Software without restriction, including without limitation the rights 
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies 
// of the Software, and to permit persons to whom the Software is furnished to do so, 
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all 
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
// PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
// FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
//

#import "QRCodesGeneratorAppDelegate.h"
#import "QRCodeGenerator.h"

#import <QuartzCore/QuartzCore.h>
@implementation QRCodesGeneratorAppDelegate
@synthesize window;

#pragma mark - Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// sample
	self.window.rootViewController = [[[UIViewController alloc] init] autorelease];
	UIImageView *imageView = [[[UIImageView alloc] initWithFrame:CGRectMake(10.0f, 50.0f, 300.0f, 300.0f)] autorelease];
	imageView.backgroundColor = [UIColor orangeColor];
	imageView.image = [QRCodeGenerator qrImageForString:@"Hello, world!" imageSize:imageView.bounds.size.width];
	[self.window.rootViewController.view addSubview:imageView];
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - Memory management

- (void)dealloc {
    [window release];
    [super dealloc];
}

@end
