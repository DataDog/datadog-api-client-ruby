# Create a new dashboard with query_table widget and text formatting

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TableWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TableWidgetDefinitionType::QUERY_TABLE,
        requests: [
          DatadogAPIClient::V1::TableWidgetRequest.new({
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query1",
                query: "avg:aws.stream.globalaccelerator.processed_bytes_in{*} by {aws_account,acceleratoripaddress}",
              }),
              DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
                aggregator: DatadogAPIClient::V1::FormulaAndFunctionMetricAggregation::AVG,
                data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
                name: "query2",
                query: "avg:aws.stream.globalaccelerator.processed_bytes_out{*} by {aws_account,acceleratoripaddress}",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            text_formats: [
              [
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS,
                    value: "fruit",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::WHITE_ON_RED,
                  replace: DatadogAPIClient::V1::TableWidgetTextFormatReplaceAll.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatReplaceAllType::ALL,
                    with: "vegetable",
                  }),
                }),
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS,
                    value: "animal",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::CUSTOM_BG,
                  custom_bg_color: "#632ca6",
                }),
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS,
                    value: "robot",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::RED_ON_WHITE,
                }),
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS,
                    value: "ai",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::YELLOW_ON_WHITE,
                }),
              ],
              [
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS_NOT,
                    value: "xyz",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::WHITE_ON_YELLOW,
                }),
              ],
              [
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::CONTAINS,
                    value: "test",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::WHITE_ON_GREEN,
                  replace: DatadogAPIClient::V1::TableWidgetTextFormatReplaceAll.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatReplaceAllType::ALL,
                    with: "vegetable",
                  }),
                }),
              ],
              [
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::DOES_NOT_CONTAIN,
                    value: "blah",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::BLACK_ON_LIGHT_RED,
                }),
              ],
              [
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::STARTS_WITH,
                    value: "abc",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::BLACK_ON_LIGHT_YELLOW,
                }),
              ],
              [
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::ENDS_WITH,
                    value: "xyz",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::BLACK_ON_LIGHT_GREEN,
                }),
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::ENDS_WITH,
                    value: "zzz",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::GREEN_ON_WHITE,
                }),
                DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                  match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                    type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS,
                    value: "animal",
                  }),
                  palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::CUSTOM_TEXT,
                  custom_fg_color: "#632ca6",
                }),
              ],
            ],
            formulas: [],
          }),
        ],
        has_search_bar: DatadogAPIClient::V1::TableWidgetHasSearchBar::NEVER,
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 4,
        height: 4,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  notify_list: [],
})
p api_instance.create_dashboard(body)
