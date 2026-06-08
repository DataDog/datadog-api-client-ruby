# List tag indexing rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_tag_indexing_rules()
