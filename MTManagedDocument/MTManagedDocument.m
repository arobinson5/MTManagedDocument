/*
 * Copyright 2013 Alec C. Robinson
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "MTManagedDocument.h"
#import  <CoreData/CoreData.h>

@interface MTManagedDocument  ()
@property (nonatomic, strong) NSManagedObjectModel *myManagedObjectModel;
@end

@implementation MTManagedDocument


- (id) initWithFileURL:(NSURL *)url andManagedObjectModelName:(NSString *)managedObjectModelName {
    if(self = [super initWithFileURL:url]) {
        _managedObjectModelName = managedObjectModelName;
    }
    return self;
}


- (NSManagedObjectModel *) managedObjectModel {
    
    if(self.myManagedObjectModel) {
        return self.myManagedObjectModel;
    } else {
        
        if(self.managedObjectModelName) {
            NSString *modelPath =[[NSBundle mainBundle] pathForResource:self.managedObjectModelName ofType:@"momd"];
            if(modelPath) {
                //we found the managed object model, so let's use it.
                self.myManagedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:[NSURL fileURLWithPath:modelPath]];
                return self.myManagedObjectModel;
            } else {
                //Fallback to the super behavior;
                return [super managedObjectModel];
            }
        
        } else {
            //Fallback to the super behavior;
            return [super managedObjectModel];
        }
        
    }
}


@end
