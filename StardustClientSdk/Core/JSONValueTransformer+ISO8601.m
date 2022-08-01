#import <ISO8601/NSDate+ISO8601.h>
#import "JSONValueTransformer+ISO8601.h"
#import "NGSSanitizer.h"

@implementation JSONValueTransformer (ISO8601)

- (NSDate *) NSDateFromNSString:(NSString *)string
{
    return [NSDate dateWithISO8601String:string];
}

- (NSString *)JSONObjectFromNSDate:(NSDate *)date
{
    return [NGSSanitizer dateToString:date];
}

@end
