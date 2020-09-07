# DatadogAPIClient::V1::IPRanges

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [**IPPrefixesAgents**](IPPrefixesAgents.md) |  | [optional] 
**api** | [**IPPrefixesAPI**](IPPrefixesAPI.md) |  | [optional] 
**apm** | [**IPPrefixesAPM**](IPPrefixesAPM.md) |  | [optional] 
**logs** | [**IPPrefixesLogs**](IPPrefixesLogs.md) |  | [optional] 
**modified** | **String** | Date when last updated, in the form &#x60;YYYY-MM-DD-hh-mm-ss&#x60;. | [optional] 
**process** | [**IPPrefixesProcess**](IPPrefixesProcess.md) |  | [optional] 
**synthetics** | [**IPPrefixesSynthetics**](IPPrefixesSynthetics.md) |  | [optional] 
**version** | **Integer** | Version of the IP list. | [optional] 
**webhooks** | [**IPPrefixesWebhooks**](IPPrefixesWebhooks.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::IPRanges.new(agents: null,
                                 api: null,
                                 apm: null,
                                 logs: null,
                                 modified: 2019-10-31-20-00-00,
                                 process: null,
                                 synthetics: null,
                                 version: 11,
                                 webhooks: null)
```


