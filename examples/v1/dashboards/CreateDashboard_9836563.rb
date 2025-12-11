# Create a geomap widget with conditional formats and text formats

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::GeomapWidgetDefinition.new({
        title: "Log Count by Service and Source",
        type: DatadogAPIClient::V1::GeomapWidgetDefinitionType::GEOMAP,
        requests: [
          DatadogAPIClient::V1::GeomapWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource::RUM,
                name: "query1",
                search: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch.new({
                  query: "@type:session",
                }),
                indexes: [
                  "*",
                ],
                compute: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new({
                  aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::COUNT,
                }),
                group_by: [],
              }),
            ],
            conditional_formats: [
              DatadogAPIClient::V1::WidgetConditionalFormat.new({
                comparator: DatadogAPIClient::V1::WidgetComparator::GREATER_THAN,
                value: 1000,
                palette: DatadogAPIClient::V1::WidgetPalette::WHITE_ON_GREEN,
              }),
            ],
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            sort: DatadogAPIClient::V1::WidgetSortBy.new({
              count: 250,
              order_by: [
                DatadogAPIClient::V1::WidgetFormulaSort.new({
                  type: DatadogAPIClient::V1::FormulaType::FORMULA,
                  index: 0,
                  order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
                }),
              ],
            }),
          }),
          DatadogAPIClient::V1::GeomapWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::EVENT_LIST,
            query: DatadogAPIClient::V1::ListStreamQuery.new({
              data_source: DatadogAPIClient::V1::ListStreamSource::LOGS_STREAM,
              query_string: "",
              indexes: [],
              storage: "hot",
            }),
            columns: [
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.location.latitude",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.location.longitude",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.country.iso_code",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.subdivision.name",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
            ],
            style: DatadogAPIClient::V1::GeomapWidgetRequestStyle.new({
              color_by: "status",
            }),
            text_formats: [
              DatadogAPIClient::V1::TableWidgetTextFormatRule.new({
                match: DatadogAPIClient::V1::TableWidgetTextFormatMatch.new({
                  type: DatadogAPIClient::V1::TableWidgetTextFormatMatchType::IS,
                  value: "error",
                }),
                palette: DatadogAPIClient::V1::TableWidgetTextFormatPalette::WHITE_ON_RED,
              }),
            ],
          }),
        ],
        style: DatadogAPIClient::V1::GeomapWidgetDefinitionStyle.new({
          palette: "hostmap_blues",
          palette_flip: false,
        }),
        view: DatadogAPIClient::V1::GeomapWidgetDefinitionView.new({
          focus: "NORTH_AMERICA",
        }),
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 12,
        height: 6,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  notify_list: [],
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::FIXED,
  tags: [],
})
p api_instance.create_dashboard(body)
