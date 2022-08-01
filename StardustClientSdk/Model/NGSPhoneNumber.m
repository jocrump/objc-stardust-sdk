#import "NGSPhoneNumber.h"

@implementation NGSPhoneNumber

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"countryCode": @"countryCode", @"areaCode": @"areaCode", @"digits": @"digits", @"extension": @"extension", @"isValid": @"isValid", @"status": @"status", @"phoneNumberType": @"phoneNumberType", @"notes": @"notes", @"hashLookup": @"hashLookup" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"countryCode", @"areaCode", @"digits", @"extension", @"notes", @"hashLookup"];
  return [optionalProperties containsObject:propertyName];
}

@end
