# DatadogAPIClient::V1::EventCreateRequest

## Properties

| Name                 | Type                                    | Description                                                                                                                                                                                                                                                               | Notes                |
| -------------------- | --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| **aggregation_key**  | **String**                              | An arbitrary string to use for aggregation. Limited to 100 characters. If you specify a key, all events using that key are grouped together in the Event Stream.                                                                                                          | [optional]           |
| **alert_type**       | [**EventAlertType**](EventAlertType.md) |                                                                                                                                                                                                                                                                           | [optional]           |
| **date_happened**    | **Integer**                             | POSIX timestamp of the event. Must be sent as an integer (i.e. no quotes). Limited to events no older than 7 days.                                                                                                                                                        | [optional]           |
| **device_name**      | **String**                              | A device name.                                                                                                                                                                                                                                                            | [optional]           |
| **host**             | **String**                              | Host name to associate with the event. Any tags associated with the host are also applied to this event.                                                                                                                                                                  | [optional]           |
| **id**               | **Integer**                             | Integer ID of the event.                                                                                                                                                                                                                                                  | [optional][readonly] |
| **payload**          | **String**                              | Payload of the event.                                                                                                                                                                                                                                                     | [optional][readonly] |
| **priority**         | [**EventPriority**](EventPriority.md)   |                                                                                                                                                                                                                                                                           | [optional]           |
| **related_event_id** | **Integer**                             | ID of the parent event. Must be sent as an integer (i.e. no quotes).                                                                                                                                                                                                      | [optional]           |
| **source_type_name** | **String**                              | The type of event being posted. Option examples include nagios, hudson, jenkins, my_apps, chef, puppet, git, bitbucket, etc. A complete list of source attribute values [available here](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value). | [optional]           |
| **tags**             | **Array&lt;String&gt;**                 | A list of tags to apply to the event.                                                                                                                                                                                                                                     | [optional]           |
| **text**             | **String**                              | The body of the event. Limited to 4000 characters. The text supports markdown. To use markdown in the event text, start the text block with &#x60;%%% \\n&#x60; and end the text block with &#x60;\\n %%%&#x60;. Use &#x60;msg_text&#x60; with the Datadog Ruby library.  |                      |
| **title**            | **String**                              | The event title.                                                                                                                                                                                                                                                          |                      |
| **url**              | **String**                              | URL of the event.                                                                                                                                                                                                                                                         | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::EventCreateRequest.new(
  aggregation_key: null,
  alert_type: null,
  date_happened: null,
  device_name: null,
  host: null,
  id: null,
  payload: {},
  priority: null,
  related_event_id: null,
  source_type_name: null,
  tags: [&quot;environment:test&quot;],
  text: Oh boy!,
  title: Did you hear the news today?,
  url: null
)
```
