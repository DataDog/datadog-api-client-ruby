# Post an event returns "OK" response with an int64 ID above 2^53

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::EventsAPI.new

body = DatadogAPIClient::V1::EventCreateRequest.new({
  title: "Example-Event",
  text: "An event whose ID exceeds Number.MAX_SAFE_INTEGER.",
  tags: [
    "test:ExampleEvent",
  ],
})
p api_instance.create_event(body)
