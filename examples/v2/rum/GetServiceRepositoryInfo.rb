# Get service repository information returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_service_repository_info".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMAPI.new

body = DatadogAPIClient::V2::ServiceRepositoryInfoRequest.new({
  data: DatadogAPIClient::V2::ServiceRepositoryInfoRequestData.new({
    attributes: DatadogAPIClient::V2::ServiceRepositoryInfoRequestAttributes.new({
      debug_id: "00000000-0000-4000-8000-000000000001",
    }),
    type: DatadogAPIClient::V2::ServiceRepositoryInfoDataType::SERVICE_REPOSITORY_INFO,
  }),
})
p api_instance.get_service_repository_info(body)
