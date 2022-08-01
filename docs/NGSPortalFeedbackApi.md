# NGSPortalFeedbackApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPortalFeedback**](NGSPortalFeedbackApi.md#addportalfeedback) | **POST** /api/stardust/v1/portals/{portalIdentifier}/feedback | Creates a job feedback based on event flow and portal.


# **addPortalFeedback**
```objc
-(NSURLSessionTask*) addPortalFeedbackWithPortalIdentifier: (NSString*) portalIdentifier
    jobFeedbackRequest: (NGSCreateProjectFeedbackRequest*) jobFeedbackRequest
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSProjectFeedbackResponse* output, NSError* error)) handler;
```

Creates a job feedback based on event flow and portal.

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* portalIdentifier = @"portalIdentifier_example"; // 
NGSCreateProjectFeedbackRequest* jobFeedbackRequest = [[NGSCreateProjectFeedbackRequest alloc] init]; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSPortalFeedbackApi*apiInstance = [[NGSPortalFeedbackApi alloc] init];

// Creates a job feedback based on event flow and portal.
[apiInstance addPortalFeedbackWithPortalIdentifier:portalIdentifier
              jobFeedbackRequest:jobFeedbackRequest
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSProjectFeedbackResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSPortalFeedbackApi->addPortalFeedback: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **jobFeedbackRequest** | [**NGSCreateProjectFeedbackRequest***](NGSCreateProjectFeedbackRequest.md)|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSProjectFeedbackResponse***](NGSProjectFeedbackResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

