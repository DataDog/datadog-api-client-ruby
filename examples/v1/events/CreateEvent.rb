# Post an event returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::EventsAPI.new

body = DatadogAPIClient::V1::EventCreateRequest.new({
  title: "Example-Event",
  text: "A text message.",
  tags: [
    "test:ExampleEvent",
  ],
})
p api_instance.create_event(body)
