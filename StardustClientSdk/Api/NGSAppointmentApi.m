#import "NGSAppointmentApi.h"
#import "NGSQueryParamCollection.h"
#import "NGSApiClient.h"
#import "NGSAppointmentTrackingInfoResponse.h"
#import "NGSProblemDetails.h"


@interface NGSAppointmentApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation NGSAppointmentApi

NSString* kNGSAppointmentApiErrorDomain = @"NGSAppointmentApiErrorDomain";
NSInteger kNGSAppointmentApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[NGSApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(NGSApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// 
/// 
///  @param eventFlowIdentifier  
///
///  @param portalIdentifier  
///
///  @returns NGSAppointmentTrackingInfoResponse*
///
-(NSURLSessionTask*) getAppointmentInfoWithEventFlowIdentifier: (NSString*) eventFlowIdentifier
    portalIdentifier: (NSString*) portalIdentifier
    completionHandler: (void (^)(NGSAppointmentTrackingInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'eventFlowIdentifier' is set
    if (eventFlowIdentifier == nil) {
        NSParameterAssert(eventFlowIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"eventFlowIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSAppointmentApiErrorDomain code:kNGSAppointmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'portalIdentifier' is set
    if (portalIdentifier == nil) {
        NSParameterAssert(portalIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"portalIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSAppointmentApiErrorDomain code:kNGSAppointmentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/portals/{portalIdentifier}/appointment/{eventFlowIdentifier}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (eventFlowIdentifier != nil) {
        pathParams[@"eventFlowIdentifier"] = eventFlowIdentifier;
    }
    if (portalIdentifier != nil) {
        pathParams[@"portalIdentifier"] = portalIdentifier;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Bearer"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NGSAppointmentTrackingInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NGSAppointmentTrackingInfoResponse*)data, error);
                                }
                            }];
}



@end
