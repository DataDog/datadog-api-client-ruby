# Delete an annotation returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_annotation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnnotationsAPI.new

# there is a valid "annotation" in the system
ANNOTATION_DATA_ID = ENV["ANNOTATION_DATA_ID"]
api_instance.delete_annotation(ANNOTATION_DATA_ID)
