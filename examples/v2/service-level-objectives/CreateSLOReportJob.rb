# Create a new SLO report returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_slo_report_job".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceLevelObjectivesAPI.new

body = DatadogAPIClient::V2::SloReportCreateRequest.new({
  data: DatadogAPIClient::V2::SloReportCreateRequestData.new({
    attributes: DatadogAPIClient::V2::SloReportCreateRequestAttributes.new({
      from_ts: 1690901870,
      to_ts: 1706803070,
      query: 'slo_type:metric "SLO Reporting Test"',
      interval: DatadogAPIClient::V2::SLOReportInterval::MONTHLY,
      timezone: "America/New_York",
    }),
  }),
})
p api_instance.create_slo_report_job(body)
