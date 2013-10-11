//
//  MDAppDelegate.m
//  Swap WebViews
//
//  Created by Mark Douma on 4/25/2012.
//  Copyright (c) 2012 Mark Douma LLC. All rights reserved.
//

#import "MDAppDelegate.h"



@implementation MDAppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[box0 setContentView:webView0];
	[box1 setContentView:webView1];
	
	
	[[webView0 mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"]]];
	[[webView1 mainFrame] loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://stackoverflow.com/"]]];
	
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
	return YES;
}


- (IBAction)swapWebViews:(id)sender {
	if ([box0 contentView] == webView0) {
		
		[box0 setContentView:webView1];
		[box1 setContentView:webView0];
		
	} else {
		[box0 setContentView:webView0];
		[box1 setContentView:webView1];
		
	}
	
}


@end
