//
//  ScaryBugData.h
//  ScaryBugsMac
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

+ (id)withTitle:(NSString*)title rating:(float)rating;

@end
