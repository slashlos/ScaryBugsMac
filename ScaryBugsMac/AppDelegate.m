//
//  AppDelegate.m
//  ScaryBugsMac
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import "AppDelegate.h"
#include "MasterViewController.h"
#import "ScaryBugDoc.h"

@interface AppDelegate ()
@property (nonatomic,strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	ScaryBugDoc * bug1 = [ScaryBugDoc withTitle:@"bug1" rating:1
									 thumbImage:[NSImage imageNamed:@"Owner"]
									  fullImage:[NSImage imageNamed:@"Owner"]];
	ScaryBugDoc * bug2 = [ScaryBugDoc withTitle:@"bug2" rating:1
									 thumbImage:[NSImage imageNamed:@"Trainer"]
									  fullImage:[NSImage imageNamed:@"Trainer"]];
	ScaryBugDoc * bug3 = [ScaryBugDoc withTitle:@"bug3" rating:1
									 thumbImage:[NSImage imageNamed:@"Pony"]
									  fullImage:[NSImage imageNamed:@"Pony"]];
	ScaryBugDoc * bug4 = [ScaryBugDoc withTitle:@"bug4" rating:1
									 thumbImage:[NSImage imageNamed:@"Jockey"]
									  fullImage:[NSImage imageNamed:@"Jockey"]];
	ScaryBugDoc * bug5 = [ScaryBugDoc withTitle:@"bug5" rating:1
									 thumbImage:[NSImage imageNamed:@"Race"]
									  fullImage:[NSImage imageNamed:@"Race"]];
	NSMutableArray * bugs = [NSMutableArray arrayWithArray:@[ bug1, bug2, bug3, bug4, bug5 ]];
	self.masterViewController.bugs = bugs;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
	// Insert code here to tear down your application
}


@end
