# DatadogAPIClient::V1::SyntheticsBrowserTestResultFull

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check** | [**SyntheticsBrowserTestResultFullCheck**](SyntheticsBrowserTestResultFullCheck.md) |  | [optional] 
**check_time** | **Float** | When the browser test was conducted. | [optional] 
**check_version** | **Integer** | Version of the browser test used. | [optional] 
**probe_dc** | **String** | Location from which the browser test was performed. | [optional] 
**result** | [**SyntheticsBrowserTestResultData**](SyntheticsBrowserTestResultData.md) |  | [optional] 
**result_id** | **String** | ID of the browser test result. | [optional] 
**status** | [**SyntheticsTestMonitorStatus**](SyntheticsTestMonitorStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTestResultFull.new(check: null,
                                 check_time: null,
                                 check_version: null,
                                 probe_dc: null,
                                 result: null,
                                 result_id: null,
                                 status: null)
```


