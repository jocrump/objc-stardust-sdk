# NGSAlbumsApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAlbumsPreviewForPortal**](NGSAlbumsApi.md#getalbumspreviewforportal) | **GET** /api/stardust/v1/portals/{portalIdentifier}/albums | 


# **getAlbumsPreviewForPortal**
```objc
-(NSURLSessionTask*) getAlbumsPreviewForPortalWithPortalIdentifier: (NSString*) portalIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
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

NGSAlbumsApi*apiInstance = [[NGSAlbumsApi alloc] init];

[apiInstance getAlbumsPreviewForPortalWithPortalIdentifier:portalIdentifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSAlbumsApi->getAlbumsPreviewForPortal: %@", error);
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

**NSURL***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

