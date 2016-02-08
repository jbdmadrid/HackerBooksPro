// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGBookAuthor.m instead.

#import "_KCGBookAuthor.h"

const struct KCGBookAuthorRelationships KCGBookAuthorRelationships = {
	.authors = @"authors",
	.books = @"books",
};

@implementation KCGBookAuthorID
@end

@implementation _KCGBookAuthor

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BookAuthor" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BookAuthor";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BookAuthor" inManagedObjectContext:moc_];
}

- (KCGBookAuthorID*)objectID {
	return (KCGBookAuthorID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic authors;

@dynamic books;

@end

