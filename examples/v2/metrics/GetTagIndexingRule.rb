# Get a tag indexing rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "tag_indexing_rule" in the system
TAG_INDEXING_RULE_DATA_ID = ENV["TAG_INDEXING_RULE_DATA_ID"]
p api_instance.get_tag_indexing_rule(TAG_INDEXING_RULE_DATA_ID)
