// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGAuthor.m instead.

#import "_KCGAuthor.h"

const struct KCGAuthorAttributes KCGAuthorAttributes = {
	.nameAuthor = @"nameAuthor",
};

const struct KCGAuthorRelationships KCGAuthorRelationships = {
	.bookauthors = @"bookauthors",
};

@implementation KCGAuthorID
@end

@implementation _KCGAuthor

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Author" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Author";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Author" inManagedObjectContext:moc_];
}

- (KCGAuthorID*)objectID {
	return (KCGAuthorID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic nameAuthor;

@dynamic bookauthors;

- (NSMutableSet*)bookauthorsSet {
	[self willAccessValueForKey:@"bookauthors"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"bookauthors"];

	[self didAccessValueForKey:@"bookauthors"];
	return result;
}

@end

