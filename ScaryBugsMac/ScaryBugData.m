//
//  ScaryBugData.m
//  ScaryBugsMac
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

- (id)initWithTitle:(NSString*)title rating:(float)rating
{
	if ((self = [super init]))
	{
		self.title = title;
		self.rating = rating;
	}
	return self;
}

+ (id)withTitle:(NSString*)title rating:(float)rating
{
	ScaryBugData * data = [[self alloc] initWithTitle:title rating:rating];

	return data;
}

@end
