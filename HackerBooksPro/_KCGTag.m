// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGTag.m instead.

#import "_KCGTag.h"

const struct KCGTagAttributes KCGTagAttributes = {
	.nameTag = @"nameTag",
};

const struct KCGTagRelationships KCGTagRelationships = {
	.booktags = @"booktags",
};

@implementation KCGTagID
@end

@implementation _KCGTag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Tag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Tag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Tag" inManagedObjectContext:moc_];
}

- (KCGTagID*)objectID {
	return (KCGTagID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic nameTag;

@dynamic booktags;

- (NSMutableSet*)booktagsSet {
	[self willAccessValueForKey:@"booktags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"booktags"];

	[self didAccessValueForKey:@"booktags"];
	return result;
}

@end

