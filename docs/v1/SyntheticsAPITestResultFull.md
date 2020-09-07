# DatadogAPIClient::V1::SyntheticsAPITestResultFull

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check** | [**SyntheticsAPITestResultFullCheck**](SyntheticsAPITestResultFullCheck.md) |  | [optional] 
**check_time** | **Float** | When the API test was conducted. | [optional] 
**check_version** | **Integer** | Version of the API test used. | [optional] 
**probe_dc** | **String** | Locations for which to query the API test results. | [optional] 
**result** | [**SyntheticsAPITestResultData**](SyntheticsAPITestResultData.md) |  | [optional] 
**result_id** | **String** | ID of the API test result. | [optional] 
**status** | [**SyntheticsTestMonitorStatus**](SyntheticsTestMonitorStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsAPITestResultFull.new(check: null,
                                 check_time: null,
                                 check_version: null,
                                 probe_dc: null,
                                 result: null,
                                 result_id: null,
                                 status: null)
```


