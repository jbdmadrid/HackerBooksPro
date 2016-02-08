// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGAnnotation.m instead.

#import "_KCGAnnotation.h"

const struct KCGAnnotationAttributes KCGAnnotationAttributes = {
	.creationDate = @"creationDate",
	.modificationDate = @"modificationDate",
	.test = @"test",
};

const struct KCGAnnotationRelationships KCGAnnotationRelationships = {
	.books = @"books",
};

@implementation KCGAnnotationID
@end

@implementation _KCGAnnotation

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Annotation" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Annotation";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Annotation" inManagedObjectContext:moc_];
}

- (KCGAnnotationID*)objectID {
	return (KCGAnnotationID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic creationDate;

@dynamic modificationDate;

@dynamic test;

@dynamic books;

@end

