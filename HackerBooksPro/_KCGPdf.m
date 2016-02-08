// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGPdf.m instead.

#import "_KCGPdf.h"

const struct KCGPdfAttributes KCGPdfAttributes = {
	.data = @"data",
	.urlString = @"urlString",
};

const struct KCGPdfRelationships KCGPdfRelationships = {
	.books = @"books",
};

@implementation KCGPdfID
@end

@implementation _KCGPdf

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"PDF" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"PDF";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"PDF" inManagedObjectContext:moc_];
}

- (KCGPdfID*)objectID {
	return (KCGPdfID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic data;

@dynamic urlString;

@dynamic books;

@end

