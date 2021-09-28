# DatadogAPIClient::V1::WebhooksIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_headers** | **String** | If &#x60;null&#x60;, uses no header. If given a JSON payload, these will be headers attached to your webhook. | [optional] |
| **encode_as** | [**WebhooksIntegrationEncoding**](WebhooksIntegrationEncoding.md) |  | [optional][default to &#39;json&#39;] |
| **name** | **String** | The name of the webhook. It corresponds with &#x60;&lt;WEBHOOK_NAME&gt;&#x60;. Learn more on how to use it in [monitor notifications](https://docs.datadoghq.com/monitors/notify). |  |
| **payload** | **String** | If &#x60;null&#x60;, uses the default payload. If given a JSON payload, the webhook returns the payload specified by the given payload. [Webhooks variable usage](https://docs.datadoghq.com/integrations/webhooks/#usage). | [optional] |
| **url** | **String** | URL of the webhook. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WebhooksIntegration.new(
  custom_headers: null,
  encode_as: null,
  name: WEBHOOK_NAME,
  payload: null,
  url: https://example.com/webhook
)
```

