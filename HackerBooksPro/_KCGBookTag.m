// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGBookTag.m instead.

#import "_KCGBookTag.h"

const struct KCGBookTagRelationships KCGBookTagRelationships = {
	.books = @"books",
	.booktags = @"booktags",
};

@implementation KCGBookTagID
@end

@implementation _KCGBookTag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BookTag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BookTag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BookTag" inManagedObjectContext:moc_];
}

- (KCGBookTagID*)objectID {
	return (KCGBookTagID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic books;

@dynamic booktags;

@end

