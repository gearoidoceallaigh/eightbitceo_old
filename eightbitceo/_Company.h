// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Company.h instead.

#import <CoreData/CoreData.h>


extern const struct CompanyAttributes {
	__unsafe_unretained NSString *name;
} CompanyAttributes;

extern const struct CompanyRelationships {
} CompanyRelationships;

extern const struct CompanyFetchedProperties {
} CompanyFetchedProperties;




@interface CompanyID : NSManagedObjectID {}
@end

@interface _Company : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CompanyID*)objectID;





@property (nonatomic, strong) NSString *name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;






@end

@interface _Company (CoreDataGeneratedAccessors)

@end

@interface _Company (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




@end
