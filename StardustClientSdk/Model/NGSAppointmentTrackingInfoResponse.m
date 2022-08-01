#import "NGSAppointmentTrackingInfoResponse.h"

@implementation NGSAppointmentTrackingInfoResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"eventFlowIdentifier": @"eventFlowIdentifier", @"owner": @"owner", @"recipient": @"recipient", @"taskDescription": @"taskDescription", @"destAddress": @"destAddress", @"stateCode": @"stateCode", @"onTheWayDate": @"onTheWayDate", @"startDate": @"startDate", @"arrivedDate": @"arrivedDate", @"completedDate": @"completedDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"owner", @"recipient", @"taskDescription", @"destAddress", @"stateCode", @"onTheWayDate", @"startDate", @"arrivedDate", @"completedDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
