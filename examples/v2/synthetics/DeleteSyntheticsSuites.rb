# Bulk delete suites returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::DeletedSuitesRequestDeleteRequest.new({
  data: DatadogAPIClient::V2::DeletedSuitesRequestDelete.new({
    attributes: DatadogAPIClient::V2::DeletedSuitesRequestDeleteAttributes.new({
      public_ids: [
        "",
      ],
    }),
    type: DatadogAPIClient::V2::DeletedSuitesRequestType::DELETE_SUITES_REQUEST,
  }),
})
p api_instance.delete_synthetics_suites(body)
