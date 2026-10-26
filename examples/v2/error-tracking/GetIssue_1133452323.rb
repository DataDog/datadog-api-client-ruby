# Get the details of an error tracking issue with samples returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

# there is a valid "issue" in the system
ISSUE_ID = ENV["ISSUE_ID"]
opts = {
  include: [
    GetIssueIncludeQueryParameterItem::SAMPLES,
  ],
  filter_samples_biases: [
    IssueSampleBias::LATEST,
  ],
}
p api_instance.get_issue(ISSUE_ID, opts)
