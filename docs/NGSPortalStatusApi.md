# NGSPortalStatusApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPortalStatus**](NGSPortalStatusApi.md#getportalstatus) | **GET** /api/stardust/v1/portals/{portalIdentifier}/status | 


# **getPortalStatus**
```objc
-(NSURLSessionTask*) getPortalStatusWithPortalIdentifier: (NSString*) portalIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSPortalStatusResponse* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* portalIdentifier = @"portalIdentifier_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSPortalStatusApi*apiInstance = [[NGSPortalStatusApi alloc] init];

[apiInstance getPortalStatusWithPortalIdentifier:portalIdentifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSPortalStatusResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSPortalStatusApi->getPortalStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSPortalStatusResponse***](NGSPortalStatusResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

