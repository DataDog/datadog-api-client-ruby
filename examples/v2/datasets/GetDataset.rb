# Get a single dataset by ID returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DatasetsAPI.new

# there is a valid "dataset" in the system
DATASET_DATA_ID = ENV["DATASET_DATA_ID"]
p api_instance.get_dataset(DATASET_DATA_ID)
