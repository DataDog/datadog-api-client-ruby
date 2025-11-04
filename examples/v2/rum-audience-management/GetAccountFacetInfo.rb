# Get account facet info returns "Successful response with facet information" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_account_facet_info".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::FacetInfoRequest.new({
  data: DatadogAPIClient::V2::FacetInfoRequestData.new({
    attributes: DatadogAPIClient::V2::FacetInfoRequestDataAttributes.new({
      facet_id: "first_browser_name",
      limit: 10,
      search: DatadogAPIClient::V2::FacetInfoRequestDataAttributesSearch.new({
        query: "user_org_id:5001 AND first_country_code:US",
      }),
      term_search: DatadogAPIClient::V2::FacetInfoRequestDataAttributesTermSearch.new({
        value: "Chrome",
      }),
    }),
    id: "facet_info_request",
    type: DatadogAPIClient::V2::FacetInfoRequestDataType::USERS_FACET_INFO_REQUEST,
  }),
})
p api_instance.get_account_facet_info(body)
