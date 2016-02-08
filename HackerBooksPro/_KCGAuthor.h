// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGAuthor.h instead.

@import CoreData;

extern const struct KCGAuthorAttributes {
	__unsafe_unretained NSString *nameAuthor;
} KCGAuthorAttributes;

extern const struct KCGAuthorRelationships {
	__unsafe_unretained NSString *bookauthors;
} KCGAuthorRelationships;

@class KCGBookAuthor;

@interface KCGAuthorID : NSManagedObjectID {}
@end

@interface _KCGAuthor : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGAuthorID* objectID;

@property (nonatomic, strong) NSString* nameAuthor;

//- (BOOL)validateNameAuthor:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *bookauthors;

- (NSMutableSet*)bookauthorsSet;

@end

@interface _KCGAuthor (BookauthorsCoreDataGeneratedAccessors)
- (void)addBookauthors:(NSSet*)value_;
- (void)removeBookauthors:(NSSet*)value_;
- (void)addBookauthorsObject:(KCGBookAuthor*)value_;
- (void)removeBookauthorsObject:(KCGBookAuthor*)value_;

@end

@interface _KCGAuthor (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveNameAuthor;
- (void)setPrimitiveNameAuthor:(NSString*)value;

- (NSMutableSet*)primitiveBookauthors;
- (void)setPrimitiveBookauthors:(NSMutableSet*)value;

@end
