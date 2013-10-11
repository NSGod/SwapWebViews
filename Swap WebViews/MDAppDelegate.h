//
//  MDAppDelegate.h
//  Swap WebViews
//
//  Created by Mark Douma on 4/25/2012.
//  Copyright (c) 2012 Mark Douma LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>


@interface MDAppDelegate : NSObject <NSApplicationDelegate> {
	IBOutlet NSWindow		*window;
	
	IBOutlet NSBox			*box0;
	IBOutlet NSBox			*box1;
	
	IBOutlet WebView		*webView0;
	IBOutlet WebView		*webView1;
}


- (IBAction)swapWebViews:(id)sender;



@end
