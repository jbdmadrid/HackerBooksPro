// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGBookAuthor.h instead.

@import CoreData;

extern const struct KCGBookAuthorRelationships {
	__unsafe_unretained NSString *authors;
	__unsafe_unretained NSString *books;
} KCGBookAuthorRelationships;

@class KCGAuthor;
@class KCGBook;

@interface KCGBookAuthorID : NSManagedObjectID {}
@end

@interface _KCGBookAuthor : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGBookAuthorID* objectID;

@property (nonatomic, strong) KCGAuthor *authors;

//- (BOOL)validateAuthors:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGBook *books;

//- (BOOL)validateBooks:(id*)value_ error:(NSError**)error_;

@end

@interface _KCGBookAuthor (CoreDataGeneratedPrimitiveAccessors)

- (KCGAuthor*)primitiveAuthors;
- (void)setPrimitiveAuthors:(KCGAuthor*)value;

- (KCGBook*)primitiveBooks;
- (void)setPrimitiveBooks:(KCGBook*)value;

@end
