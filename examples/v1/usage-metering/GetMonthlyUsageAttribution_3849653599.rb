# Paginate monthly usage attribution

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new

# there is a valid "monthly_usage_attribution" response
MONTHLY_USAGE_ATTRIBUTION_METADATA_PAGINATION_NEXT_RECORD_ID = ENV["MONTHLY_USAGE_ATTRIBUTION_METADATA_PAGINATION_NEXT_RECORD_ID"]
opts = {
  next_record_id: MONTHLY_USAGE_ATTRIBUTION_METADATA_PAGINATION_NEXT_RECORD_ID,
}
p api_instance.get_monthly_usage_attribution((Time.now + -3 * 86400), MonthlyUsageAttributionSupportedMetrics::INFRA_HOST_USAGE, opts)
