# NGSAppointmentApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAppointmentInfo**](NGSAppointmentApi.md#getappointmentinfo) | **GET** /api/stardust/v1/portals/{portalIdentifier}/appointment/{eventFlowIdentifier} | 


# **getAppointmentInfo**
```objc
-(NSURLSessionTask*) getAppointmentInfoWithEventFlowIdentifier: (NSString*) eventFlowIdentifier
    portalIdentifier: (NSString*) portalIdentifier
        completionHandler: (void (^)(NGSAppointmentTrackingInfoResponse* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* eventFlowIdentifier = @"eventFlowIdentifier_example"; // 
NSString* portalIdentifier = @"portalIdentifier_example"; // 

NGSAppointmentApi*apiInstance = [[NGSAppointmentApi alloc] init];

[apiInstance getAppointmentInfoWithEventFlowIdentifier:eventFlowIdentifier
              portalIdentifier:portalIdentifier
          completionHandler: ^(NGSAppointmentTrackingInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSAppointmentApi->getAppointmentInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventFlowIdentifier** | **NSString***|  | 
 **portalIdentifier** | **NSString***|  | 

### Return type

[**NGSAppointmentTrackingInfoResponse***](NGSAppointmentTrackingInfoResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

