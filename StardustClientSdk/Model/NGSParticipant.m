#import "NGSParticipant.h"

@implementation NGSParticipant

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"lastName": @"lastName", @"phoneNumbers": @"phoneNumbers", @"emailAddress": @"emailAddress", @"companyName": @"companyName", @"communicationPreference": @"communicationPreference", @"imageUri": @"imageUri", @"participantType": @"participantType", @"resourcePaths": @"resourcePaths", @"tags": @"tags", @"hashLookup": @"hashLookup" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"lastName", @"phoneNumbers", @"emailAddress", @"companyName", @"communicationPreference", @"imageUri", @"participantType", @"tags", @"hashLookup"];
  return [optionalProperties containsObject:propertyName];
}

@end
