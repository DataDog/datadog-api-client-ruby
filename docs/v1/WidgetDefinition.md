# DatadogAPIClient::V1::WidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **String** | ID of the alert to use in the widget. | 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of your widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**ToplistWidgetDefinitionType**](ToplistWidgetDefinitionType.md) |  | 
**viz_type** | [**WidgetVizType**](WidgetVizType.md) |  | 
**precision** | **Integer** | Number of decimals to show. If not defined, the widget uses the raw value. | [optional] 
**text_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**unit** | **String** | Unit to display with the value. | [optional] 
**custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] 
**requests** | [**Array&lt;ToplistWidgetRequest&gt;**](ToplistWidgetRequest.md) | List of top list widget requests. | 
**check** | **String** | Name of the check to use in the widget. | 
**group** | **Array&lt;String&gt;** | List of tag prefixes to group by. | [optional] 
**group_by** | **Array&lt;String&gt;** | List of tag prefixes to group by in the case of a cluster check. | [optional] 
**grouping** | [**WidgetGrouping**](WidgetGrouping.md) |  | 
**tags** | **Array&lt;String&gt;** | List of tags used to filter the groups reporting a cluster check. | [optional] 
**legend_size** | **String** | Available legend sizes for a widget. Should be one of \&quot;0\&quot;, \&quot;2\&quot;, \&quot;4\&quot;, \&quot;8\&quot;, \&quot;16\&quot;, or \&quot;auto\&quot;. | [optional] 
**show_legend** | **Boolean** | (screenboard only) Show the legend for this widget. | [optional] 
**event_size** | [**WidgetEventSize**](WidgetEventSize.md) |  | [optional] 
**query** | **String** | Query to filter the monitors with. | 
**tags_execution** | **String** | The execution method for multi-value filters. Can be either and or or. | [optional] 
**color** | **String** | Color of the text. | [optional] 
**font_size** | **String** | Size of the text. | [optional] 
**text** | **String** | Text to display. | 
**layout_type** | [**WidgetLayoutType**](WidgetLayoutType.md) |  | 
**widgets** | [**Array&lt;Widget&gt;**](Widget.md) | List of widget groups. | 
**events** | [**Array&lt;WidgetEvent&gt;**](WidgetEvent.md) | List of widget events. | [optional] 
**yaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] 
**no_group_hosts** | **Boolean** | Whether to show the hosts that don’t fit in a group. | [optional] 
**no_metric_hosts** | **Boolean** | Whether to show the hosts with no metrics. | [optional] 
**node_type** | [**WidgetNodeType**](WidgetNodeType.md) |  | [optional] 
**notes** | **String** | Notes on the title. | [optional] 
**scope** | **Array&lt;String&gt;** | List of tags used to filter the map. | [optional] 
**style** | [**HostMapWidgetDefinitionStyle**](HostMapWidgetDefinitionStyle.md) |  | [optional] 
**url** | **String** | URL of the image. | 
**margin** | [**WidgetMargin**](WidgetMargin.md) |  | [optional] 
**sizing** | [**WidgetImageSizing**](WidgetImageSizing.md) |  | [optional] 
**columns** | **Array&lt;String&gt;** | Which columns to display on the widget. | [optional] 
**indexes** | **Array&lt;String&gt;** | An array of index names to query in the stream. Use [] to query all indexes at once. | [optional] 
**logset** | **String** | ID of the log set to use. | [optional] 
**message_display** | [**WidgetMessageDisplay**](WidgetMessageDisplay.md) |  | [optional] 
**show_date_column** | **Boolean** | Whether to show the date column or not | [optional] 
**show_message_column** | **Boolean** | Whether to show the message column or not | [optional] 
**sort** | [**WidgetMonitorSummarySort**](WidgetMonitorSummarySort.md) |  | [optional] 
**color_preference** | [**WidgetColorPreference**](WidgetColorPreference.md) |  | [optional] 
**count** | **Integer** | The number of monitors to display. | [optional] 
**display_format** | [**WidgetServiceSummaryDisplayFormat**](WidgetServiceSummaryDisplayFormat.md) |  | [optional] 
**hide_zero_counts** | **Boolean** | Whether to show counts of 0 or not. | [optional] 
**show_last_triggered** | **Boolean** | Whether to show the time that has elapsed since the monitor/group triggered. | [optional] 
**start** | **Integer** | The start of the list. Typically 0. | [optional] 
**summary_type** | [**WidgetSummaryType**](WidgetSummaryType.md) |  | [optional] 
**background_color** | **String** | Background color of the note. | [optional] 
**content** | **String** | Content of the note. | 
**show_tick** | **Boolean** | Whether to show a tick or not. | [optional] 
**tick_edge** | [**WidgetTickEdge**](WidgetTickEdge.md) |  | [optional] 
**tick_pos** | **String** | Where to position the tick on an edge. | [optional] 
**autoscale** | **Boolean** | Whether to use auto-scaling or not. | [optional] 
**custom_unit** | **String** | Display a unit of your choice on the widget. | [optional] 
**color_by_groups** | **Array&lt;String&gt;** | List of groups used for colors. | [optional] 
**xaxis** | [**WidgetAxis**](WidgetAxis.md) |  | [optional] 
**show_error_budget** | **Boolean** | Defined error budget. | [optional] 
**slo_id** | **String** | ID of the SLO displayed. | [optional] 
**time_windows** | [**Array&lt;WidgetTimeWindows&gt;**](WidgetTimeWindows.md) | Times being monitored. | [optional] 
**view_mode** | [**WidgetViewMode**](WidgetViewMode.md) |  | [optional] 
**view_type** | **String** | Type of view displayed by the widget. | [default to &#39;detail&#39;]
**filters** | **Array&lt;String&gt;** | Your environment and primary tag (or * if enabled for your account). | 
**service** | **String** | APM service. | 
**env** | **String** | APM environment. | 
**show_breakdown** | **Boolean** | Whether to show the latency breakdown or not. | [optional] 
**show_distribution** | **Boolean** | Whether to show the latency distribution or not. | [optional] 
**show_errors** | **Boolean** | Whether to show the error metrics or not. | [optional] 
**show_hits** | **Boolean** | Whether to show the hits metrics or not. | [optional] 
**show_latency** | **Boolean** | Whether to show the latency metrics or not. | [optional] 
**show_resource_list** | **Boolean** | Whether to show the resource list or not. | [optional] 
**size_format** | [**WidgetSizeFormat**](WidgetSizeFormat.md) |  | [optional] 
**span_name** | **String** | APM span name. | 
**markers** | [**Array&lt;WidgetMarker&gt;**](WidgetMarker.md) | List of markers. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::WidgetDefinition.new(alert_id: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null,
                                 viz_type: null,
                                 precision: null,
                                 text_align: null,
                                 unit: null,
                                 custom_links: null,
                                 requests: [{&quot;q&quot;:&quot;system.load.1&quot;}],
                                 check: null,
                                 group: null,
                                 group_by: null,
                                 grouping: null,
                                 tags: null,
                                 legend_size: null,
                                 show_legend: null,
                                 event_size: null,
                                 query: null,
                                 tags_execution: null,
                                 color: null,
                                 font_size: null,
                                 text: null,
                                 layout_type: null,
                                 widgets: [{&quot;definition&quot;:{&quot;requests&quot;:{&quot;fill&quot;:{&quot;q&quot;:&quot;system.cpu.user&quot;}},&quot;type&quot;:&quot;hostmap&quot;}}],
                                 events: null,
                                 yaxis: null,
                                 no_group_hosts: null,
                                 no_metric_hosts: null,
                                 node_type: null,
                                 notes: null,
                                 scope: null,
                                 style: null,
                                 url: null,
                                 margin: null,
                                 sizing: null,
                                 columns: null,
                                 indexes: [&quot;days-3&quot;,&quot;days-7&quot;],
                                 logset: null,
                                 message_display: null,
                                 show_date_column: null,
                                 show_message_column: null,
                                 sort: null,
                                 color_preference: null,
                                 count: null,
                                 display_format: null,
                                 hide_zero_counts: null,
                                 show_last_triggered: null,
                                 start: null,
                                 summary_type: null,
                                 background_color: null,
                                 content: null,
                                 show_tick: null,
                                 tick_edge: null,
                                 tick_pos: null,
                                 autoscale: null,
                                 custom_unit: null,
                                 color_by_groups: null,
                                 xaxis: null,
                                 show_error_budget: null,
                                 slo_id: null,
                                 time_windows: null,
                                 view_mode: null,
                                 view_type: detail,
                                 filters: [&quot;*&quot;],
                                 service: null,
                                 env: null,
                                 show_breakdown: null,
                                 show_distribution: null,
                                 show_errors: null,
                                 show_hits: null,
                                 show_latency: null,
                                 show_resource_list: null,
                                 size_format: null,
                                 span_name: null,
                                 markers: null)
```


