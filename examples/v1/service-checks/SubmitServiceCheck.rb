# Submit a Service Check returns "Payload accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceChecksAPI.new

body = [
  DatadogAPIClient::V1::ServiceCheck.new({
    check: "app.ok",
    host_name: "host",
    status: DatadogAPIClient::V1::ServiceCheckStatus::OK,
    tags: [
      "test:ExampleServiceCheck",
    ],
  }),
]
p api_instance.submit_service_check(body)
