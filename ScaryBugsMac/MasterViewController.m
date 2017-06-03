//
//  MasterViewController.m
//  ScaryBugsMac
//
//  Created by Carlos D. Santiago on 6/2/17.
//  Copyright © 2017 Carlos D. Santiago. All rights reserved.
//

#import "MasterViewController.h"
#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation MasterViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	// Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject
{
	[super setRepresentedObject:representedObject];

	// Update the view, if already loaded.
}

#pragma mark - DataSource

- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
				  row:(NSInteger)row
{
	// Get a new ViewCell
	NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier
															owner:self];

	// Since this is a single-column table view, this would not be necessary.
	// But it's a good practice to do it in order by remember it when a table is multicolumn.
	if ( [tableColumn.identifier isEqualToString:@"BugColumn"] )
	{
		ScaryBugDoc *bugDoc = [self.bugs objectAtIndex:row];

		cellView.imageView.image = bugDoc.thumbImage;
		cellView.textField.stringValue = bugDoc.data.title;
		return cellView;
	}
	return cellView;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
	return self.bugs.count;
}

#pragma mark - Delegate


@end
