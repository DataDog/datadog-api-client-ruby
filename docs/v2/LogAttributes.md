# DatadogAPIClient::V2::LogAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | **Hash&lt;String, Object&gt;** | JSON object of attributes from your log. | [optional] 
**host** | **String** | Name of the machine from where the logs are being sent. | [optional] 
**message** | **String** | The message [reserved attribute](https://docs.datadoghq.com/logs/log_collection/#reserved-attributes) of your log. By default, Datadog ingests the value of the message attribute as the body of the log entry. That value is then highlighted and displayed in the Logstream, where it is indexed for full text search. | [optional] 
**service** | **String** | The name of the application or service generating the log events. It is used to switch from Logs to APM, so make sure you define the same value when you use both products. | [optional] 
**status** | **String** | Status of the message associated with your log. | [optional] 
**tags** | **Array&lt;String&gt;** | Array of tags associated with your log. | [optional] 
**timestamp** | **DateTime** | Timestamp of your log. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogAttributes.new(attributes: {&quot;customAttribute&quot;:123,&quot;duration&quot;:2345},
                                 host: i-0123,
                                 message: Host connected to remote,
                                 service: agent,
                                 status: INFO,
                                 tags: [&quot;team:A&quot;],
                                 timestamp: 2019-01-02T09:42:36.320Z)
```


