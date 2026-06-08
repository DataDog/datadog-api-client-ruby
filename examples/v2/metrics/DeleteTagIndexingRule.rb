# Delete a tag indexing rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "tag_indexing_rule" in the system
TAG_INDEXING_RULE_DATA_ID = ENV["TAG_INDEXING_RULE_DATA_ID"]
api_instance.delete_tag_indexing_rule(TAG_INDEXING_RULE_DATA_ID)
