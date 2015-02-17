//
//  AppDelegate.m
//  ColorPicker
//
//  Created by Hiraku on 2015/02/17.
//  Copyright (c) 2015年 Hiraku. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [_window orderOut:_window];
    colorPanel = [NSColorPanel sharedColorPanel];
    [colorPanel setShowsAlpha:NO];
    [[NSApplication sharedApplication] orderFrontColorPanel:colorPanel];
    checkTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(checkColorPicker) userInfo:nil repeats:YES];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)checkColorPicker {
    if (![colorPanel isVisible]) {
        [NSApp terminate:nil];
    }
}

@end
