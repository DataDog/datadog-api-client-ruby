# Get a RUM exclusion filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RumRetentionFiltersAPI.new

# there is a valid "rum_exclusion_filter" in the system
RUM_EXCLUSION_FILTER_DATA_ID = ENV["RUM_EXCLUSION_FILTER_DATA_ID"]
p api_instance.get_exclusion_filter("a33671aa-24fd-4dcd-ba4b-5bbdbafe7690", RUM_EXCLUSION_FILTER_DATA_ID)
