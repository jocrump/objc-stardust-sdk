#import "NGSParticipantRequest.h"

@implementation NGSParticipantRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"lastName": @"lastName", @"mobilePhoneNumber": @"mobilePhoneNumber", @"emailAddress": @"emailAddress", @"companyName": @"companyName", @"imageUri": @"imageUri", @"participantType": @"participantType", @"resourcePaths": @"resourcePaths", @"tags": @"tags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"lastName", @"mobilePhoneNumber", @"emailAddress", @"companyName", @"imageUri", @"participantType", @"resourcePaths", @"tags"];
  return [optionalProperties containsObject:propertyName];
}

@end
