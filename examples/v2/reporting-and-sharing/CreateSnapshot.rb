# Create a graph snapshot returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_snapshot".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ReportingandSharingAPI.new

body = DatadogAPIClient::V2::CreateSnapshotRequest.new({
  data: DatadogAPIClient::V2::CreateSnapshotDataRequest.new({
    attributes: DatadogAPIClient::V2::CreateSnapshotDataAttributesRequest.new({
      additional_config: DatadogAPIClient::V2::CreateSnapshotAdditionalConfig.new({
        template_variables: [
          DatadogAPIClient::V2::CreateSnapshotTemplateVariable.new({
            name: "host",
            prefix: "host",
            values: [
              "web-server-1",
              "web-server-2",
            ],
          }),
        ],
        timeseries_legend_type: DatadogAPIClient::V2::CreateSnapshotTimeseriesLegendType::EXPANDED,
        timezone_offset_minutes: 300,
      }),
      _end: 1692464800000,
      height: 185,
      is_authenticated: false,
      start: 1692464000000,
      ttl: DatadogAPIClient::V2::CreateSnapshotTTL::SIXTY_DAYS,
      widget_definition: {
        "requests": "[{'q': 'avg:system.cpu.user{*}'}]", "type": "timeseries",
      },
      width: 300,
    }),
    type: DatadogAPIClient::V2::CreateSnapshotType::CREATE_SNAPSHOT,
  }),
})
p api_instance.create_snapshot(body)
