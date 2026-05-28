# Get annotations for a page returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_page_annotations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnnotationsAPI.new

# there is a valid "annotation" in the system
ANNOTATION_DATA_ATTRIBUTES_PAGE_ID = ENV["ANNOTATION_DATA_ATTRIBUTES_PAGE_ID"]
p api_instance.get_page_annotations(ANNOTATION_DATA_ATTRIBUTES_PAGE_ID, 1704067200000, 1704153600000)
