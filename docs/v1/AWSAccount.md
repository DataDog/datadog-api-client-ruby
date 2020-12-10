# DatadogAPIClient::V1::AWSAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_key_id** | **String** | Your AWS access key ID. Only required if your AWS account is a GovCloud or China account. | [optional] |
| **account_id** | **String** | Your AWS Account ID without dashes. | [optional] |
| **account_specific_namespace_rules** | **Hash&lt;String, Boolean&gt;** | An object, (in the form &#x60;{\&quot;namespace1\&quot;:true/false, \&quot;namespace2\&quot;:true/false}&#x60;), that enables or disables metric collection for specific AWS namespaces for this AWS account only. | [optional] |
| **excluded_regions** | **Array&lt;String&gt;** | An array of AWS regions to exclude from metrics collection. | [optional] |
| **filter_tags** | **Array&lt;String&gt;** | The array of EC2 tags (in the form &#x60;key:value&#x60;) defines a filter that Datadog uses when collecting metrics from EC2. Wildcards, such as &#x60;?&#x60; (for single characters) and &#x60;*&#x60; (for multiple characters) can also be used. Only hosts that match one of the defined tags will be imported into Datadog. The rest will be ignored. Host matching a given tag can also be excluded by adding &#x60;!&#x60; before the tag. For example, &#x60;env:production,instance-type:c1.*,!region:us-east-1&#x60; | [optional] |
| **host_tags** | **Array&lt;String&gt;** | Array of tags (in the form &#x60;key:value&#x60;) to add to all hosts and metrics reporting through this integration. | [optional] |
| **role_name** | **String** | Your Datadog role delegation name. | [optional] |
| **secret_access_key** | **String** | Your AWS secret access key. Only required if your AWS account is a GovCloud or China account. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSAccount.new(
  access_key_id: null,
  account_id: 1234567,
  account_specific_namespace_rules: {&quot;auto_scaling&quot;:false,&quot;opswork&quot;:false},
  excluded_regions: [&quot;us-east-1&quot;,&quot;us-west-2&quot;],
  filter_tags: [&quot;&lt;KEY&gt;:&lt;VALUE&gt;&quot;],
  host_tags: [&quot;&lt;KEY&gt;:&lt;VALUE&gt;&quot;],
  role_name: DatadogAWSIntegrationRole,
  secret_access_key: null
)
```

