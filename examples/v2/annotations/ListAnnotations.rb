# List annotations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_annotations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnnotationsAPI.new

# there is a valid "annotation" in the system
ANNOTATION_DATA_ATTRIBUTES_PAGE_ID = ENV["ANNOTATION_DATA_ATTRIBUTES_PAGE_ID"]
p api_instance.list_annotations(ANNOTATION_DATA_ATTRIBUTES_PAGE_ID, 1704067200000, 1704153600000)
