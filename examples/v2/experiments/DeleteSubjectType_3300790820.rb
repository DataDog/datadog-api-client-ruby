# Delete subject type returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "experiment_subject_type" in the system
EXPERIMENT_SUBJECT_TYPE_DATA_ID = ENV["EXPERIMENT_SUBJECT_TYPE_DATA_ID"]
api_instance.delete_subject_type(EXPERIMENT_SUBJECT_TYPE_DATA_ID)
