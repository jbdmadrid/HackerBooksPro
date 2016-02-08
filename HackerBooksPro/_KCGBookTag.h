// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGBookTag.h instead.

@import CoreData;

extern const struct KCGBookTagRelationships {
	__unsafe_unretained NSString *books;
	__unsafe_unretained NSString *booktags;
} KCGBookTagRelationships;

@class KCGBook;
@class KCGTag;

@interface KCGBookTagID : NSManagedObjectID {}
@end

@interface _KCGBookTag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGBookTagID* objectID;

@property (nonatomic, strong) KCGBook *books;

//- (BOOL)validateBooks:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGTag *booktags;

//- (BOOL)validateBooktags:(id*)value_ error:(NSError**)error_;

@end

@interface _KCGBookTag (CoreDataGeneratedPrimitiveAccessors)

- (KCGBook*)primitiveBooks;
- (void)setPrimitiveBooks:(KCGBook*)value;

- (KCGTag*)primitiveBooktags;
- (void)setPrimitiveBooktags:(KCGTag*)value;

@end
