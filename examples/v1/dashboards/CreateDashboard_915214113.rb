# Create a new dashboard with geomap widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: nil,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 30,
      }),
      definition: DatadogAPIClient::V1::GeomapWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::GeomapWidgetDefinitionType::GEOMAP,
        requests: [
          DatadogAPIClient::V1::GeomapWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition.new({
                name: "query1",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource::RUM,
                search: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch.new({
                  query: "",
                }),
                indexes: [
                  "*",
                ],
                compute: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new({
                  aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::COUNT,
                }),
                group_by: [
                  DatadogAPIClient::V1::FormulaAndFunctionEventQueryGroupBy.new({
                    facet: "@geo.country_iso_code",
                    limit: 250,
                    sort: DatadogAPIClient::V1::FormulaAndFunctionEventQueryGroupBySort.new({
                      order: DatadogAPIClient::V1::QuerySortOrder::DESC,
                      aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::COUNT,
                    }),
                  }),
                ],
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
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
          }),
        ],
        style: DatadogAPIClient::V1::GeomapWidgetDefinitionStyle.new({
          palette: "hostmap_blues",
          palette_flip: false,
        }),
        view: DatadogAPIClient::V1::GeomapWidgetDefinitionView.new({
          focus: "WORLD",
        }),
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  is_read_only: false,
  notify_list: [],
})
p api_instance.create_dashboard(body)
