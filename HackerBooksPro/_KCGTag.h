// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGTag.h instead.

@import CoreData;

extern const struct KCGTagAttributes {
	__unsafe_unretained NSString *nameTag;
} KCGTagAttributes;

extern const struct KCGTagRelationships {
	__unsafe_unretained NSString *booktags;
} KCGTagRelationships;

@class KCGBookTag;

@interface KCGTagID : NSManagedObjectID {}
@end

@interface _KCGTag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGTagID* objectID;

@property (nonatomic, strong) NSString* nameTag;

//- (BOOL)validateNameTag:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *booktags;

- (NSMutableSet*)booktagsSet;

@end

@interface _KCGTag (BooktagsCoreDataGeneratedAccessors)
- (void)addBooktags:(NSSet*)value_;
- (void)removeBooktags:(NSSet*)value_;
- (void)addBooktagsObject:(KCGBookTag*)value_;
- (void)removeBooktagsObject:(KCGBookTag*)value_;

@end

@interface _KCGTag (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveNameTag;
- (void)setPrimitiveNameTag:(NSString*)value;

- (NSMutableSet*)primitiveBooktags;
- (void)setPrimitiveBooktags:(NSMutableSet*)value;

@end
