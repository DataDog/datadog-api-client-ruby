# DatadogAPIClient::V1::IPPrefixesSynthetics

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prefixes_ipv4** | **Array&lt;String&gt;** | List of IPv4 prefixes. | [optional] 
**prefixes_ipv4_by_location** | **Hash&lt;String, Array&lt;String&gt;&gt;** | List of IPv4 prefixes by location. | [optional] 
**prefixes_ipv6** | **Array&lt;String&gt;** | List of IPv6 prefixes. | [optional] 
**prefixes_ipv6_by_location** | **Hash&lt;String, Array&lt;String&gt;&gt;** | List of IPv6 prefixes by location. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::IPPrefixesSynthetics.new(prefixes_ipv4: null,
                                 prefixes_ipv4_by_location: null,
                                 prefixes_ipv6: null,
                                 prefixes_ipv6_by_location: null)
```


