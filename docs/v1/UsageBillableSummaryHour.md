# DatadogAPIClient::V1::UsageBillableSummaryHour

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_plan** | **String** | The billing plan. | [optional] 
**end_date** | **DateTime** | Shows the last date of usage. | [optional] 
**num_orgs** | **Integer** | The number of organizations. | [optional] 
**org_name** | **String** | The organization name. | [optional] 
**public_id** | **String** | The organization public ID. | [optional] 
**ratio_in_month** | **Integer** | Shows usage aggregation for a billing period. | [optional] 
**start_date** | **DateTime** | Shows the first date of usage. | [optional] 
**usage** | [**UsageBillableSummaryKeys**](UsageBillableSummaryKeys.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageBillableSummaryHour.new(billing_plan: null,
                                 end_date: null,
                                 num_orgs: null,
                                 org_name: null,
                                 public_id: null,
                                 ratio_in_month: null,
                                 start_date: null,
                                 usage: null)
```


