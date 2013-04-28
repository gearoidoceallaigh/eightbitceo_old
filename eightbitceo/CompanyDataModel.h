//
//  CompanyDataModel.h
//  eightbitceo
//
//  Created by Ger Kelly on 19/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CompanyDataModel : NSObject

+ (id)sharedDataModel;

@property (nonatomic, readonly) NSManagedObjectContext *mainContext;
@property (nonatomic, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSString *)modelName;
- (NSString *)pathToModel;
- (NSString *)storeFilename;
- (NSString *)pathToLocalStore;

@end
