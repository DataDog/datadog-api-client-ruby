# Post an event returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::EventsAPI.new

body = DatadogAPIClient::V1::EventCreateRequest.new({
  title: "Example-Post_an_event_returns_OK_response",
  text: "A text message.",
  tags: [
    "test:ExamplePostaneventreturnsOKresponse",
  ],
})
p api_instance.create_event(body)
