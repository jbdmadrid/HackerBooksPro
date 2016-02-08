// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGBook.m instead.

#import "_KCGBook.h"

const struct KCGBookAttributes KCGBookAttributes = {
	.title = @"title",
};

const struct KCGBookRelationships KCGBookRelationships = {
	.annotations = @"annotations",
	.bookauthors = @"bookauthors",
	.booktags = @"booktags",
	.pdfs = @"pdfs",
	.photos = @"photos",
};

@implementation KCGBookID
@end

@implementation _KCGBook

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Book";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Book" inManagedObjectContext:moc_];
}

- (KCGBookID*)objectID {
	return (KCGBookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic title;

@dynamic annotations;

@dynamic bookauthors;

- (NSMutableSet*)bookauthorsSet {
	[self willAccessValueForKey:@"bookauthors"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"bookauthors"];

	[self didAccessValueForKey:@"bookauthors"];
	return result;
}

@dynamic booktags;

- (NSMutableSet*)booktagsSet {
	[self willAccessValueForKey:@"booktags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"booktags"];

	[self didAccessValueForKey:@"booktags"];
	return result;
}

@dynamic pdfs;

@dynamic photos;

@end

