# Preview AWS metric name filter returns "AWS metric name filter preview result" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.preview_aws_metric_name_filter".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AWSIntegrationAPI.new

body = DatadogAPIClient::V2::AWSMetricNameFilterPreviewRequest.new({
  data: DatadogAPIClient::V2::AWSMetricNameFilterPreviewRequestData.new({
    attributes: DatadogAPIClient::V2::AWSMetricNameFilterPreviewRequestAttributes.new({
      metric_name_filters: [
        DatadogAPIClient::V2::AWSMetricNameFiltersIncludeOnly.new({
          include_only: [
            "aws.ec2.network_in",
          ],
          namespace: "AWS/EC2",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::AWSMetricNameFilterPreviewType::METRIC_NAME_FILTER_PREVIEW,
  }),
})
p api_instance.preview_aws_metric_name_filter("aws_account_config_id", body)
