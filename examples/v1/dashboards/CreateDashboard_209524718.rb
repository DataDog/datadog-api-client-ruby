# Create a heatgrid widget with bin labels and formatted row labels

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::HeatgridWidgetDefinition.new({
        type: DatadogAPIClient::V1::HeatgridWidgetDefinitionType::HEATGRID,
        requests: [
          DatadogAPIClient::V1::HeatgridWidgetRequest.new({
            response_format: DatadogAPIClient::V1::HeatgridWidgetResponseFormat::TIMESERIES,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:system.cpu.user{*} by {host}",
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::HeatgridWidgetFormula.new({
                formula: "query1",
              }),
            ],
          }),
        ],
        sort: DatadogAPIClient::V1::HeatgridSort.new({
          nesting_display: DatadogAPIClient::V1::HeatgridNestingDisplay::FLAT,
          sort_by: DatadogAPIClient::V1::HeatgridSortByLabel.new({
            property: DatadogAPIClient::V1::HeatgridSortByLabelProperty::LABEL,
            order: DatadogAPIClient::V1::HeatgridSortOrder::ASC,
          }),
        }),
        color: DatadogAPIClient::V1::HeatgridDiscreteCustomColor.new({
          mode: DatadogAPIClient::V1::HeatgridDiscreteMode::DISCRETE,
          source: DatadogAPIClient::V1::HeatgridCustomColorSource::CUSTOM,
          bins: [
            DatadogAPIClient::V1::HeatgridColorBin.new({
              color: "#00FF00",
              label: "Normal",
            }),
            DatadogAPIClient::V1::HeatgridColorBin.new({
              color: "#FF0000",
              lower_bound: 80,
              label: "High",
            }),
          ],
        }),
        label_column: DatadogAPIClient::V1::HeatgridLabelColumn.new({
          text_formats: [
            DatadogAPIClient::V1::HeatgridTextFormatRule.new({
              match: DatadogAPIClient::V1::HeatgridTextFormatMatch.new({
                type: DatadogAPIClient::V1::HeatgridTextFormatMatchType::STARTS_WITH,
                value: "api-",
              }),
              replace: DatadogAPIClient::V1::HeatgridTextFormatReplaceSubstring.new({
                type: DatadogAPIClient::V1::HeatgridTextFormatReplaceSubstringType::SUBSTRING,
                substring: "api-",
                with: "",
              }),
            }),
            DatadogAPIClient::V1::HeatgridTextFormatRule.new({
              match: DatadogAPIClient::V1::HeatgridTextFormatMatch.new({
                type: DatadogAPIClient::V1::HeatgridTextFormatMatchType::IS,
                value: "unknown",
              }),
              replace: DatadogAPIClient::V1::HeatgridTextFormatReplaceAll.new({
                type: DatadogAPIClient::V1::HeatgridTextFormatReplaceAllType::ALL,
                with: "Other",
              }),
            }),
          ],
        }),
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
