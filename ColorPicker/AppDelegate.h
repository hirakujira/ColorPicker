//
//  AppDelegate.h
//  ColorPicker
//
//  Created by Hiraku on 2015/02/17.
//  Copyright (c) 2015年 Hiraku. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSColorPanel* colorPanel;
    NSTimer* checkTimer;
}
@end

