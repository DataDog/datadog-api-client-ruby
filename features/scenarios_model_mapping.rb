ScenariosModelMappings = {
    "v1.CreateAPIKey" => {
            "body" => "ApiKey",
    },
    "v1.DeleteAPIKey" => {
            "key" => "String",
    },
    "v1.GetAPIKey" => {
            "key" => "String",
    },
    "v1.UpdateAPIKey" => {
            "key" => "String",
            "body" => "ApiKey",
    },
    "v1.CreateApplicationKey" => {
            "body" => "ApplicationKey",
    },
    "v1.DeleteApplicationKey" => {
            "key" => "String",
    },
    "v1.GetApplicationKey" => {
            "key" => "String",
    },
    "v1.UpdateApplicationKey" => {
            "key" => "String",
            "body" => "ApplicationKey",
    },
    "v1.SubmitServiceCheck" => {
            "body" => "Array<ServiceCheck>",
    },
    "v1.GetDailyCustomReports" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort_dir" => "UsageSortDirection",
            "sort" => "UsageSort",
    },
    "v1.GetSpecifiedDailyCustomReports" => {
            "report_id" => "String",
    },
    "v1.GetMonthlyCustomReports" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort_dir" => "UsageSortDirection",
            "sort" => "UsageSort",
    },
    "v1.GetSpecifiedMonthlyCustomReports" => {
            "report_id" => "String",
    },
    "v1.GetUsageAnalyzedLogs" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageAuditLogs" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageLambda" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageBillableSummary" => {
            "month" => "Time",
            "include_connected_accounts" => "Boolean",
    },
    "v1.GetUsageCIApp" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageCloudSecurityPostureManagement" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageCWS" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageDBM" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageFargate" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageHosts" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetHourlyUsageAttribution" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
            "usage_type" => "HourlyUsageAttributionUsageType",
            "next_record_id" => "String",
            "tag_breakdown_keys" => "String",
            "include_descendants" => "Boolean",
    },
    "v1.GetIncidentManagement" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageIndexedSpans" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetIngestedSpans" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageInternetOfThings" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageLogs" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageLogsByRetention" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageLogsByIndex" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
            "index_name" => "Array<String>",
    },
    "v1.GetMonthlyUsageAttribution" => {
            "start_month" => "Time",
            "end_month" => "Time",
            "fields" => "MonthlyUsageAttributionSupportedMetrics",
            "sort_direction" => "UsageSortDirection",
            "sort_name" => "MonthlyUsageAttributionSupportedMetrics",
            "tag_breakdown_keys" => "String",
            "next_record_id" => "String",
            "include_descendants" => "Boolean",
    },
    "v1.GetUsageNetworkFlows" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageNetworkHosts" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageOnlineArchive" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageProfiling" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageRumUnits" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageRumSessions" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
            "type" => "String",
    },
    "v1.GetUsageSDS" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageSNMP" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageSummary" => {
            "start_month" => "Time",
            "end_month" => "Time",
            "include_org_details" => "Boolean",
            "include_connected_accounts" => "Boolean",
    },
    "v1.GetUsageSynthetics" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageSyntheticsAPI" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageSyntheticsBrowser" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageTimeseries" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v1.GetUsageTopAvgMetrics" => {
            "month" => "Time",
            "day" => "Time",
            "names" => "Array<String>",
            "limit" => "Integer",
            "next_record_id" => "String",
    },
    "v1.DeleteDashboards" => {
            "body" => "DashboardBulkDeleteRequest",
    },
    "v1.ListDashboards" => {
            "filter_shared" => "Boolean",
            "filter_deleted" => "Boolean",
            "count" => "Integer",
            "start" => "Integer",
    },
    "v1.RestoreDashboards" => {
            "body" => "DashboardRestoreRequest",
    },
    "v1.CreateDashboard" => {
            "body" => "Dashboard",
    },
    "v1.CreatePublicDashboard" => {
            "body" => "SharedDashboard",
    },
    "v1.DeletePublicDashboard" => {
            "token" => "String",
    },
    "v1.GetPublicDashboard" => {
            "token" => "String",
    },
    "v1.UpdatePublicDashboard" => {
            "token" => "String",
            "body" => "SharedDashboardUpdateRequest",
    },
    "v1.DeletePublicDashboardInvitation" => {
            "token" => "String",
            "body" => "SharedDashboardInvites",
    },
    "v1.GetPublicDashboardInvitations" => {
            "token" => "String",
            "page_size" => "Integer",
            "page_number" => "Integer",
    },
    "v1.SendPublicDashboardInvitation" => {
            "token" => "String",
            "body" => "SharedDashboardInvites",
    },
    "v1.DeleteDashboard" => {
            "dashboard_id" => "String",
    },
    "v1.GetDashboard" => {
            "dashboard_id" => "String",
    },
    "v1.UpdateDashboard" => {
            "dashboard_id" => "String",
            "body" => "Dashboard",
    },
    "v1.CreateDashboardList" => {
            "body" => "DashboardList",
    },
    "v1.DeleteDashboardList" => {
            "list_id" => "Integer",
    },
    "v1.GetDashboardList" => {
            "list_id" => "Integer",
    },
    "v1.UpdateDashboardList" => {
            "list_id" => "Integer",
            "body" => "DashboardList",
    },
    "v1.SubmitDistributionPoints" => {
            "content_encoding" => "DistributionPointsContentEncoding",
            "body" => "DistributionPointsPayload",
    },
    "v1.ListActiveMetrics" => {
            "from" => "Integer",
            "host" => "String",
            "tag_filter" => "String",
    },
    "v1.GetMetricMetadata" => {
            "metric_name" => "String",
    },
    "v1.UpdateMetricMetadata" => {
            "metric_name" => "String",
            "body" => "MetricMetadata",
    },
    "v1.QueryMetrics" => {
            "from" => "Integer",
            "to" => "Integer",
            "query" => "String",
    },
    "v1.ListMetrics" => {
            "q" => "String",
    },
    "v1.SubmitMetrics" => {
            "content_encoding" => "MetricContentEncoding",
            "body" => "MetricsPayload",
    },
    "v1.ListDowntimes" => {
            "current_only" => "Boolean",
            "with_creator" => "Boolean",
    },
    "v1.CreateDowntime" => {
            "body" => "Downtime",
    },
    "v1.CancelDowntimesByScope" => {
            "body" => "CancelDowntimesByScopeRequest",
    },
    "v1.CancelDowntime" => {
            "downtime_id" => "Integer",
    },
    "v1.GetDowntime" => {
            "downtime_id" => "Integer",
    },
    "v1.UpdateDowntime" => {
            "downtime_id" => "Integer",
            "body" => "Downtime",
    },
    "v1.ListMonitorDowntimes" => {
            "monitor_id" => "Integer",
    },
    "v1.ListEvents" => {
            "start" => "Integer",
            "_end" => "Integer",
            "priority" => "EventPriority",
            "sources" => "String",
            "tags" => "String",
            "unaggregated" => "Boolean",
            "exclude_aggregate" => "Boolean",
            "page" => "Integer",
    },
    "v1.CreateEvent" => {
            "body" => "EventCreateRequest",
    },
    "v1.GetEvent" => {
            "event_id" => "Integer",
    },
    "v1.GetGraphSnapshot" => {
            "metric_query" => "String",
            "start" => "Integer",
            "_end" => "Integer",
            "event_query" => "String",
            "graph_def" => "String",
            "title" => "String",
            "height" => "Integer",
            "width" => "Integer",
    },
    "v1.MuteHost" => {
            "host_name" => "String",
            "body" => "HostMuteSettings",
    },
    "v1.UnmuteHost" => {
            "host_name" => "String",
    },
    "v1.ListHosts" => {
            "filter" => "String",
            "sort_field" => "String",
            "sort_dir" => "String",
            "start" => "Integer",
            "count" => "Integer",
            "from" => "Integer",
            "include_muted_hosts_data" => "Boolean",
            "include_hosts_metadata" => "Boolean",
    },
    "v1.GetHostTotals" => {
            "from" => "Integer",
    },
    "v1.DeleteAWSAccount" => {
            "body" => "AWSAccountDeleteRequest",
    },
    "v1.ListAWSAccounts" => {
            "account_id" => "String",
            "role_name" => "String",
            "access_key_id" => "String",
    },
    "v1.CreateAWSAccount" => {
            "body" => "AWSAccount",
    },
    "v1.UpdateAWSAccount" => {
            "account_id" => "String",
            "role_name" => "String",
            "access_key_id" => "String",
            "body" => "AWSAccount",
    },
    "v1.DeleteAWSEventBridgeSource" => {
            "body" => "AWSEventBridgeDeleteRequest",
    },
    "v1.CreateAWSEventBridgeSource" => {
            "body" => "AWSEventBridgeCreateRequest",
    },
    "v1.DeleteAWSTagFilter" => {
            "body" => "AWSTagFilterDeleteRequest",
    },
    "v1.ListAWSTagFilters" => {
            "account_id" => "String",
    },
    "v1.CreateAWSTagFilter" => {
            "body" => "AWSTagFilterCreateRequest",
    },
    "v1.CreateNewAWSExternalID" => {
            "body" => "AWSAccount",
    },
    "v1.DeleteAWSLambdaARN" => {
            "body" => "AWSAccountAndLambdaRequest",
    },
    "v1.CreateAWSLambdaARN" => {
            "body" => "AWSAccountAndLambdaRequest",
    },
    "v1.CheckAWSLogsLambdaAsync" => {
            "body" => "AWSAccountAndLambdaRequest",
    },
    "v1.EnableAWSLogServices" => {
            "body" => "AWSLogsServicesRequest",
    },
    "v1.CheckAWSLogsServicesAsync" => {
            "body" => "AWSLogsServicesRequest",
    },
    "v1.DeleteAzureIntegration" => {
            "body" => "AzureAccount",
    },
    "v1.CreateAzureIntegration" => {
            "body" => "AzureAccount",
    },
    "v1.UpdateAzureIntegration" => {
            "body" => "AzureAccount",
    },
    "v1.UpdateAzureHostFilters" => {
            "body" => "AzureAccount",
    },
    "v1.DeleteGCPIntegration" => {
            "body" => "GCPAccount",
    },
    "v1.CreateGCPIntegration" => {
            "body" => "GCPAccount",
    },
    "v1.UpdateGCPIntegration" => {
            "body" => "GCPAccount",
    },
    "v1.CreatePagerDutyIntegrationService" => {
            "body" => "PagerDutyService",
    },
    "v1.DeletePagerDutyIntegrationService" => {
            "service_name" => "String",
    },
    "v1.GetPagerDutyIntegrationService" => {
            "service_name" => "String",
    },
    "v1.UpdatePagerDutyIntegrationService" => {
            "service_name" => "String",
            "body" => "PagerDutyServiceKey",
    },
    "v1.GetSlackIntegrationChannels" => {
            "account_name" => "String",
    },
    "v1.CreateSlackIntegrationChannel" => {
            "account_name" => "String",
            "body" => "SlackIntegrationChannel",
    },
    "v1.RemoveSlackIntegrationChannel" => {
            "account_name" => "String",
            "channel_name" => "String",
    },
    "v1.GetSlackIntegrationChannel" => {
            "account_name" => "String",
            "channel_name" => "String",
    },
    "v1.UpdateSlackIntegrationChannel" => {
            "account_name" => "String",
            "channel_name" => "String",
            "body" => "SlackIntegrationChannel",
    },
    "v1.CreateWebhooksIntegrationCustomVariable" => {
            "body" => "WebhooksIntegrationCustomVariable",
    },
    "v1.DeleteWebhooksIntegrationCustomVariable" => {
            "custom_variable_name" => "String",
    },
    "v1.GetWebhooksIntegrationCustomVariable" => {
            "custom_variable_name" => "String",
    },
    "v1.UpdateWebhooksIntegrationCustomVariable" => {
            "custom_variable_name" => "String",
            "body" => "WebhooksIntegrationCustomVariableUpdateRequest",
    },
    "v1.CreateWebhooksIntegration" => {
            "body" => "WebhooksIntegration",
    },
    "v1.DeleteWebhooksIntegration" => {
            "webhook_name" => "String",
    },
    "v1.GetWebhooksIntegration" => {
            "webhook_name" => "String",
    },
    "v1.UpdateWebhooksIntegration" => {
            "webhook_name" => "String",
            "body" => "WebhooksIntegrationUpdateRequest",
    },
    "v1.ListLogs" => {
            "body" => "LogsListRequest",
    },
    "v1.SubmitLog" => {
            "content_encoding" => "ContentEncoding",
            "ddtags" => "String",
            "body" => "Array<HTTPLogItem>",
    },
    "v1.UpdateLogsIndexOrder" => {
            "body" => "LogsIndexesOrder",
    },
    "v1.CreateLogsIndex" => {
            "body" => "LogsIndex",
    },
    "v1.GetLogsIndex" => {
            "name" => "String",
    },
    "v1.UpdateLogsIndex" => {
            "name" => "String",
            "body" => "LogsIndexUpdateRequest",
    },
    "v1.UpdateLogsPipelineOrder" => {
            "body" => "LogsPipelinesOrder",
    },
    "v1.CreateLogsPipeline" => {
            "body" => "LogsPipeline",
    },
    "v1.DeleteLogsPipeline" => {
            "pipeline_id" => "String",
    },
    "v1.GetLogsPipeline" => {
            "pipeline_id" => "String",
    },
    "v1.UpdateLogsPipeline" => {
            "pipeline_id" => "String",
            "body" => "LogsPipeline",
    },
    "v1.ListMonitors" => {
            "group_states" => "String",
            "name" => "String",
            "tags" => "String",
            "monitor_tags" => "String",
            "with_downtimes" => "Boolean",
            "id_offset" => "Integer",
            "page" => "Integer",
            "page_size" => "Integer",
    },
    "v1.CreateMonitor" => {
            "body" => "Monitor",
    },
    "v1.CheckCanDeleteMonitor" => {
            "monitor_ids" => "Array<Integer>",
    },
    "v1.SearchMonitorGroups" => {
            "query" => "String",
            "page" => "Integer",
            "per_page" => "Integer",
            "sort" => "String",
    },
    "v1.SearchMonitors" => {
            "query" => "String",
            "page" => "Integer",
            "per_page" => "Integer",
            "sort" => "String",
    },
    "v1.ValidateMonitor" => {
            "body" => "Monitor",
    },
    "v1.DeleteMonitor" => {
            "monitor_id" => "Integer",
            "force" => "String",
    },
    "v1.GetMonitor" => {
            "monitor_id" => "Integer",
            "group_states" => "String",
            "with_downtimes" => "Boolean",
    },
    "v1.UpdateMonitor" => {
            "monitor_id" => "Integer",
            "body" => "MonitorUpdateRequest",
    },
    "v1.ValidateExistingMonitor" => {
            "monitor_id" => "Integer",
            "body" => "Monitor",
    },
    "v1.ListNotebooks" => {
            "author_handle" => "String",
            "exclude_author_handle" => "String",
            "start" => "Integer",
            "count" => "Integer",
            "sort_field" => "String",
            "sort_dir" => "String",
            "query" => "String",
            "include_cells" => "Boolean",
            "is_template" => "Boolean",
            "type" => "String",
    },
    "v1.CreateNotebook" => {
            "body" => "NotebookCreateRequest",
    },
    "v1.DeleteNotebook" => {
            "notebook_id" => "Integer",
    },
    "v1.GetNotebook" => {
            "notebook_id" => "Integer",
    },
    "v1.UpdateNotebook" => {
            "notebook_id" => "Integer",
            "body" => "NotebookUpdateRequest",
    },
    "v1.CreateChildOrg" => {
            "body" => "OrganizationCreateBody",
    },
    "v1.GetOrg" => {
            "public_id" => "String",
    },
    "v1.UpdateOrg" => {
            "public_id" => "String",
            "body" => "Organization",
    },
    "v1.DowngradeOrg" => {
            "public_id" => "String",
    },
    "v1.UploadIdPForOrg" => {
            "public_id" => "String",
            "idp_file" => "File",
    },
    "v1.AddSecurityMonitoringSignalToIncident" => {
            "signal_id" => "String",
            "body" => "AddSignalToIncidentRequest",
    },
    "v1.EditSecurityMonitoringSignalAssignee" => {
            "signal_id" => "String",
            "body" => "SignalAssigneeUpdateRequest",
    },
    "v1.EditSecurityMonitoringSignalState" => {
            "signal_id" => "String",
            "body" => "SignalStateUpdateRequest",
    },
    "v1.ListSLOs" => {
            "ids" => "String",
            "query" => "String",
            "tags_query" => "String",
            "metrics_query" => "String",
            "limit" => "Integer",
            "offset" => "Integer",
    },
    "v1.CreateSLO" => {
            "body" => "ServiceLevelObjectiveRequest",
    },
    "v1.DeleteSLOTimeframeInBulk" => {
            "body" => "Hash<String, Array<SLOTimeframe>>",
    },
    "v1.CheckCanDeleteSLO" => {
            "ids" => "String",
    },
    "v1.SearchSLO" => {
            "query" => "String",
            "page_size" => "Integer",
            "page_number" => "Integer",
            "include_facets" => "Boolean",
    },
    "v1.DeleteSLO" => {
            "slo_id" => "String",
            "force" => "String",
    },
    "v1.GetSLO" => {
            "slo_id" => "String",
            "with_configured_alert_ids" => "Boolean",
    },
    "v1.UpdateSLO" => {
            "slo_id" => "String",
            "body" => "ServiceLevelObjective",
    },
    "v1.GetSLOCorrections" => {
            "slo_id" => "String",
    },
    "v1.GetSLOHistory" => {
            "slo_id" => "String",
            "from_ts" => "Integer",
            "to_ts" => "Integer",
            "target" => "Float",
            "apply_correction" => "Boolean",
    },
    "v1.ListSLOCorrection" => {
            "offset" => "Integer",
            "limit" => "Integer",
    },
    "v1.CreateSLOCorrection" => {
            "body" => "SLOCorrectionCreateRequest",
    },
    "v1.DeleteSLOCorrection" => {
            "slo_correction_id" => "String",
    },
    "v1.GetSLOCorrection" => {
            "slo_correction_id" => "String",
    },
    "v1.UpdateSLOCorrection" => {
            "slo_correction_id" => "String",
            "body" => "SLOCorrectionUpdateRequest",
    },
    "v1.GetSyntheticsCIBatch" => {
            "batch_id" => "String",
    },
    "v1.CreatePrivateLocation" => {
            "body" => "SyntheticsPrivateLocation",
    },
    "v1.DeletePrivateLocation" => {
            "location_id" => "String",
    },
    "v1.GetPrivateLocation" => {
            "location_id" => "String",
    },
    "v1.UpdatePrivateLocation" => {
            "location_id" => "String",
            "body" => "SyntheticsPrivateLocation",
    },
    "v1.ListTests" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
    },
    "v1.CreateSyntheticsAPITest" => {
            "body" => "SyntheticsAPITest",
    },
    "v1.GetAPITest" => {
            "public_id" => "String",
    },
    "v1.UpdateAPITest" => {
            "public_id" => "String",
            "body" => "SyntheticsAPITest",
    },
    "v1.CreateSyntheticsBrowserTest" => {
            "body" => "SyntheticsBrowserTest",
    },
    "v1.GetBrowserTest" => {
            "public_id" => "String",
    },
    "v1.UpdateBrowserTest" => {
            "public_id" => "String",
            "body" => "SyntheticsBrowserTest",
    },
    "v1.GetBrowserTestLatestResults" => {
            "public_id" => "String",
            "from_ts" => "Integer",
            "to_ts" => "Integer",
            "probe_dc" => "Array<String>",
    },
    "v1.GetBrowserTestResult" => {
            "public_id" => "String",
            "result_id" => "String",
    },
    "v1.DeleteTests" => {
            "body" => "SyntheticsDeleteTestsPayload",
    },
    "v1.TriggerTests" => {
            "body" => "SyntheticsTriggerBody",
    },
    "v1.TriggerCITests" => {
            "body" => "SyntheticsCITestBody",
    },
    "v1.GetTest" => {
            "public_id" => "String",
    },
    "v1.PatchTest" => {
            "public_id" => "String",
            "body" => "SyntheticsPatchTestBody",
    },
    "v1.GetAPITestLatestResults" => {
            "public_id" => "String",
            "from_ts" => "Integer",
            "to_ts" => "Integer",
            "probe_dc" => "Array<String>",
    },
    "v1.GetAPITestResult" => {
            "public_id" => "String",
            "result_id" => "String",
    },
    "v1.UpdateTestPauseStatus" => {
            "public_id" => "String",
            "body" => "SyntheticsUpdateTestPauseStatusPayload",
    },
    "v1.CreateGlobalVariable" => {
            "body" => "SyntheticsGlobalVariableRequest",
    },
    "v1.DeleteGlobalVariable" => {
            "variable_id" => "String",
    },
    "v1.GetGlobalVariable" => {
            "variable_id" => "String",
    },
    "v1.EditGlobalVariable" => {
            "variable_id" => "String",
            "body" => "SyntheticsGlobalVariableRequest",
    },
    "v1.ListHostTags" => {
            "source" => "String",
    },
    "v1.DeleteHostTags" => {
            "host_name" => "String",
            "source" => "String",
    },
    "v1.GetHostTags" => {
            "host_name" => "String",
            "source" => "String",
    },
    "v1.CreateHostTags" => {
            "host_name" => "String",
            "source" => "String",
            "body" => "HostTags",
    },
    "v1.UpdateHostTags" => {
            "host_name" => "String",
            "source" => "String",
            "body" => "HostTags",
    },
    "v1.CreateUser" => {
            "body" => "User",
    },
    "v1.DisableUser" => {
            "user_handle" => "String",
    },
    "v1.GetUser" => {
            "user_handle" => "String",
    },
    "v1.UpdateUser" => {
            "user_handle" => "String",
            "body" => "User",
    },
    "v2.ListAPIKeys" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "APIKeysSort",
            "filter" => "String",
            "filter_created_at_start" => "String",
            "filter_created_at_end" => "String",
            "filter_modified_at_start" => "String",
            "filter_modified_at_end" => "String",
            "include" => "String",
            "filter_remote_config_read_enabled" => "Boolean",
            "filter_category" => "String",
    },
    "v2.CreateAPIKey" => {
            "body" => "APIKeyCreateRequest",
    },
    "v2.DeleteAPIKey" => {
            "api_key_id" => "String",
    },
    "v2.GetAPIKey" => {
            "api_key_id" => "String",
            "include" => "String",
    },
    "v2.UpdateAPIKey" => {
            "api_key_id" => "String",
            "body" => "APIKeyUpdateRequest",
    },
    "v2.ListApplicationKeys" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "ApplicationKeysSort",
            "filter" => "String",
            "filter_created_at_start" => "String",
            "filter_created_at_end" => "String",
            "include" => "String",
    },
    "v2.DeleteApplicationKey" => {
            "app_key_id" => "String",
    },
    "v2.GetApplicationKey" => {
            "app_key_id" => "String",
            "include" => "String",
    },
    "v2.UpdateApplicationKey" => {
            "app_key_id" => "String",
            "body" => "ApplicationKeyUpdateRequest",
    },
    "v2.ListCurrentUserApplicationKeys" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "ApplicationKeysSort",
            "filter" => "String",
            "filter_created_at_start" => "String",
            "filter_created_at_end" => "String",
            "include" => "String",
    },
    "v2.CreateCurrentUserApplicationKey" => {
            "body" => "ApplicationKeyCreateRequest",
    },
    "v2.DeleteCurrentUserApplicationKey" => {
            "app_key_id" => "String",
    },
    "v2.GetCurrentUserApplicationKey" => {
            "app_key_id" => "String",
    },
    "v2.UpdateCurrentUserApplicationKey" => {
            "app_key_id" => "String",
            "body" => "ApplicationKeyUpdateRequest",
    },
    "v2.ListAPIs" => {
            "query" => "String",
            "page_limit" => "Integer",
            "page_offset" => "Integer",
    },
    "v2.DeleteOpenAPI" => {
            "id" => "UUID",
    },
    "v2.GetOpenAPI" => {
            "id" => "UUID",
    },
    "v2.UpdateOpenAPI" => {
            "id" => "UUID",
            "openapi_spec_file" => "File",
    },
    "v2.CreateOpenAPI" => {
            "openapi_spec_file" => "File",
    },
    "v2.CreateSpansMetric" => {
            "body" => "SpansMetricCreateRequest",
    },
    "v2.DeleteSpansMetric" => {
            "metric_id" => "String",
    },
    "v2.GetSpansMetric" => {
            "metric_id" => "String",
    },
    "v2.UpdateSpansMetric" => {
            "metric_id" => "String",
            "body" => "SpansMetricUpdateRequest",
    },
    "v2.CreateApmRetentionFilter" => {
            "body" => "RetentionFilterCreateRequest",
    },
    "v2.ReorderApmRetentionFilters" => {
            "body" => "ReorderRetentionFiltersRequest",
    },
    "v2.DeleteApmRetentionFilter" => {
            "filter_id" => "String",
    },
    "v2.GetApmRetentionFilter" => {
            "filter_id" => "String",
    },
    "v2.UpdateApmRetentionFilter" => {
            "filter_id" => "String",
            "body" => "RetentionFilterUpdateRequest",
    },
    "v2.ListAuditLogs" => {
            "filter_query" => "String",
            "filter_from" => "Time",
            "filter_to" => "Time",
            "sort" => "AuditLogsSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.SearchAuditLogs" => {
            "body" => "AuditLogsSearchEventsRequest",
    },
    "v2.ListAuthNMappings" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "AuthNMappingsSort",
            "filter" => "String",
            "resource_type" => "AuthNMappingResourceType",
    },
    "v2.CreateAuthNMapping" => {
            "body" => "AuthNMappingCreateRequest",
    },
    "v2.DeleteAuthNMapping" => {
            "authn_mapping_id" => "String",
    },
    "v2.GetAuthNMapping" => {
            "authn_mapping_id" => "String",
    },
    "v2.UpdateAuthNMapping" => {
            "authn_mapping_id" => "String",
            "body" => "AuthNMappingUpdateRequest",
    },
    "v2.SearchCases" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort_field" => "CaseSortableField",
            "filter" => "String",
            "sort_asc" => "Boolean",
    },
    "v2.CreateCase" => {
            "body" => "CaseCreateRequest",
    },
    "v2.CreateProject" => {
            "body" => "ProjectCreateRequest",
    },
    "v2.DeleteProject" => {
            "project_id" => "String",
    },
    "v2.GetProject" => {
            "project_id" => "String",
    },
    "v2.GetCase" => {
            "case_id" => "String",
    },
    "v2.ArchiveCase" => {
            "case_id" => "String",
            "body" => "CaseEmptyRequest",
    },
    "v2.AssignCase" => {
            "case_id" => "String",
            "body" => "CaseAssignRequest",
    },
    "v2.UpdatePriority" => {
            "case_id" => "String",
            "body" => "CaseUpdatePriorityRequest",
    },
    "v2.UpdateStatus" => {
            "case_id" => "String",
            "body" => "CaseUpdateStatusRequest",
    },
    "v2.UnarchiveCase" => {
            "case_id" => "String",
            "body" => "CaseEmptyRequest",
    },
    "v2.UnassignCase" => {
            "case_id" => "String",
            "body" => "CaseEmptyRequest",
    },
    "v2.ListCatalogEntity" => {
            "page_offset" => "Integer",
            "page_limit" => "Integer",
            "fitler_id" => "String",
            "fitler_ref" => "String",
            "fitler_name" => "String",
            "fitler_kind" => "String",
            "fitler_owner" => "String",
            "fitler_relation_type" => "RelationType",
            "fitler_exclude_snapshot" => "String",
            "include" => "IncludeType",
    },
    "v2.UpsertCatalogEntity" => {
            "body" => "UpsertCatalogEntityRequest",
    },
    "v2.DeleteCatalogEntity" => {
            "entity_id" => "String",
    },
    "v2.CreateCIAppPipelineEvent" => {
            "body" => "CIAppCreatePipelineEventRequest",
    },
    "v2.AggregateCIAppPipelineEvents" => {
            "body" => "CIAppPipelinesAggregateRequest",
    },
    "v2.ListCIAppPipelineEvents" => {
            "filter_query" => "String",
            "filter_from" => "Time",
            "filter_to" => "Time",
            "sort" => "CIAppSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.SearchCIAppPipelineEvents" => {
            "body" => "CIAppPipelineEventsRequest",
    },
    "v2.AggregateCIAppTestEvents" => {
            "body" => "CIAppTestsAggregateRequest",
    },
    "v2.ListCIAppTestEvents" => {
            "filter_query" => "String",
            "filter_from" => "Time",
            "filter_to" => "Time",
            "sort" => "CIAppSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.SearchCIAppTestEvents" => {
            "body" => "CIAppTestEventsRequest",
    },
    "v2.ListContainerImages" => {
            "filter_tags" => "String",
            "group_by" => "String",
            "sort" => "String",
            "page_size" => "Integer",
            "page_cursor" => "String",
    },
    "v2.ListContainers" => {
            "filter_tags" => "String",
            "group_by" => "String",
            "sort" => "String",
            "page_size" => "Integer",
            "page_cursor" => "String",
    },
    "v2.CreateCostAWSCURConfig" => {
            "body" => "AwsCURConfigPostRequest",
    },
    "v2.DeleteCostAWSCURConfig" => {
            "cloud_account_id" => "String",
    },
    "v2.UpdateCostAWSCURConfig" => {
            "cloud_account_id" => "String",
            "body" => "AwsCURConfigPatchRequest",
    },
    "v2.ListAWSRelatedAccounts" => {
            "filter_management_account_id" => "String",
    },
    "v2.CreateCostAzureUCConfigs" => {
            "body" => "AzureUCConfigPostRequest",
    },
    "v2.DeleteCostAzureUCConfig" => {
            "cloud_account_id" => "String",
    },
    "v2.UpdateCostAzureUCConfigs" => {
            "cloud_account_id" => "String",
            "body" => "AzureUCConfigPatchRequest",
    },
    "v2.UploadCustomCostsFile" => {
            "body" => "Array<CustomCostsFileLineItem>",
    },
    "v2.DeleteCustomCostsFile" => {
            "file_id" => "String",
    },
    "v2.GetCustomCostsFile" => {
            "file_id" => "String",
    },
    "v2.GetMonthlyCostAttribution" => {
            "start_month" => "Time",
            "end_month" => "Time",
            "fields" => "String",
            "sort_direction" => "SortDirection",
            "sort_name" => "String",
            "tag_breakdown_keys" => "String",
            "next_record_id" => "String",
            "include_descendants" => "Boolean",
    },
    "v2.GetUsageApplicationSecurityMonitoring" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v2.GetCostByOrg" => {
            "start_month" => "Time",
            "end_month" => "Time",
    },
    "v2.GetEstimatedCostByOrg" => {
            "view" => "String",
            "start_month" => "Time",
            "end_month" => "Time",
            "start_date" => "Time",
            "end_date" => "Time",
            "include_connected_accounts" => "Boolean",
    },
    "v2.GetHistoricalCostByOrg" => {
            "view" => "String",
            "start_month" => "Time",
            "end_month" => "Time",
            "include_connected_accounts" => "Boolean",
    },
    "v2.GetHourlyUsage" => {
            "filter_timestamp_start" => "Time",
            "filter_timestamp_end" => "Time",
            "filter_product_families" => "String",
            "filter_include_descendants" => "Boolean",
            "filter_include_connected_accounts" => "Boolean",
            "filter_include_breakdown" => "Boolean",
            "filter_versions" => "String",
            "page_limit" => "Integer",
            "page_next_record_id" => "String",
    },
    "v2.GetUsageLambdaTracedInvocations" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v2.GetUsageObservabilityPipelines" => {
            "start_hr" => "Time",
            "end_hr" => "Time",
    },
    "v2.GetProjectedCost" => {
            "view" => "String",
            "include_connected_accounts" => "Boolean",
    },
    "v2.DeleteDashboardListItems" => {
            "dashboard_list_id" => "Integer",
            "body" => "DashboardListDeleteItemsRequest",
    },
    "v2.GetDashboardListItems" => {
            "dashboard_list_id" => "Integer",
    },
    "v2.CreateDashboardListItems" => {
            "dashboard_list_id" => "Integer",
            "body" => "DashboardListAddItemsRequest",
    },
    "v2.UpdateDashboardListItems" => {
            "dashboard_list_id" => "Integer",
            "body" => "DashboardListUpdateItemsRequest",
    },
    "v2.CreateDORADeployment" => {
            "body" => "DORADeploymentRequest",
    },
    "v2.CreateDORAIncident" => {
            "body" => "DORAIncidentRequest",
    },
    "v2.ListDowntimes" => {
            "current_only" => "Boolean",
            "include" => "String",
            "page_offset" => "Integer",
            "page_limit" => "Integer",
    },
    "v2.CreateDowntime" => {
            "body" => "DowntimeCreateRequest",
    },
    "v2.CancelDowntime" => {
            "downtime_id" => "String",
    },
    "v2.GetDowntime" => {
            "downtime_id" => "String",
            "include" => "String",
    },
    "v2.UpdateDowntime" => {
            "downtime_id" => "String",
            "body" => "DowntimeUpdateRequest",
    },
    "v2.ListMonitorDowntimes" => {
            "monitor_id" => "Integer",
            "page_offset" => "Integer",
            "page_limit" => "Integer",
    },
    "v2.ListEvents" => {
            "filter_query" => "String",
            "filter_from" => "String",
            "filter_to" => "String",
            "sort" => "EventsSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.SearchEvents" => {
            "body" => "EventsListRequest",
    },
    "v2.ListIncidents" => {
            "include" => "Array<IncidentRelatedObject>",
            "page_size" => "Integer",
            "page_offset" => "Integer",
    },
    "v2.CreateIncident" => {
            "body" => "IncidentCreateRequest",
    },
    "v2.SearchIncidents" => {
            "include" => "IncidentRelatedObject",
            "query" => "String",
            "sort" => "IncidentSearchSortOrder",
            "page_size" => "Integer",
            "page_offset" => "Integer",
    },
    "v2.DeleteIncident" => {
            "incident_id" => "String",
    },
    "v2.GetIncident" => {
            "incident_id" => "String",
            "include" => "Array<IncidentRelatedObject>",
    },
    "v2.UpdateIncident" => {
            "incident_id" => "String",
            "include" => "Array<IncidentRelatedObject>",
            "body" => "IncidentUpdateRequest",
    },
    "v2.ListIncidentAttachments" => {
            "incident_id" => "String",
            "include" => "Array<IncidentAttachmentRelatedObject>",
            "filter_attachment_type" => "Array<IncidentAttachmentAttachmentType>",
    },
    "v2.UpdateIncidentAttachments" => {
            "incident_id" => "String",
            "include" => "Array<IncidentAttachmentRelatedObject>",
            "body" => "IncidentAttachmentUpdateRequest",
    },
    "v2.ListIncidentIntegrations" => {
            "incident_id" => "String",
    },
    "v2.CreateIncidentIntegration" => {
            "incident_id" => "String",
            "body" => "IncidentIntegrationMetadataCreateRequest",
    },
    "v2.DeleteIncidentIntegration" => {
            "incident_id" => "String",
            "integration_metadata_id" => "String",
    },
    "v2.GetIncidentIntegration" => {
            "incident_id" => "String",
            "integration_metadata_id" => "String",
    },
    "v2.UpdateIncidentIntegration" => {
            "incident_id" => "String",
            "integration_metadata_id" => "String",
            "body" => "IncidentIntegrationMetadataPatchRequest",
    },
    "v2.ListIncidentTodos" => {
            "incident_id" => "String",
    },
    "v2.CreateIncidentTodo" => {
            "incident_id" => "String",
            "body" => "IncidentTodoCreateRequest",
    },
    "v2.DeleteIncidentTodo" => {
            "incident_id" => "String",
            "todo_id" => "String",
    },
    "v2.GetIncidentTodo" => {
            "incident_id" => "String",
            "todo_id" => "String",
    },
    "v2.UpdateIncidentTodo" => {
            "incident_id" => "String",
            "todo_id" => "String",
            "body" => "IncidentTodoPatchRequest",
    },
    "v2.CreateGCPSTSAccount" => {
            "body" => "GCPSTSServiceAccountCreateRequest",
    },
    "v2.DeleteGCPSTSAccount" => {
            "account_id" => "String",
    },
    "v2.UpdateGCPSTSAccount" => {
            "account_id" => "String",
            "body" => "GCPSTSServiceAccountUpdateRequest",
    },
    "v2.MakeGCPSTSDelegate" => {
            "body" => "Object",
    },
    "v2.CreateOpsgenieService" => {
            "body" => "OpsgenieServiceCreateRequest",
    },
    "v2.DeleteOpsgenieService" => {
            "integration_service_id" => "String",
    },
    "v2.GetOpsgenieService" => {
            "integration_service_id" => "String",
    },
    "v2.UpdateOpsgenieService" => {
            "integration_service_id" => "String",
            "body" => "OpsgenieServiceUpdateRequest",
    },
    "v2.CreateCloudflareAccount" => {
            "body" => "CloudflareAccountCreateRequest",
    },
    "v2.DeleteCloudflareAccount" => {
            "account_id" => "String",
    },
    "v2.GetCloudflareAccount" => {
            "account_id" => "String",
    },
    "v2.UpdateCloudflareAccount" => {
            "account_id" => "String",
            "body" => "CloudflareAccountUpdateRequest",
    },
    "v2.CreateConfluentAccount" => {
            "body" => "ConfluentAccountCreateRequest",
    },
    "v2.DeleteConfluentAccount" => {
            "account_id" => "String",
    },
    "v2.GetConfluentAccount" => {
            "account_id" => "String",
    },
    "v2.UpdateConfluentAccount" => {
            "account_id" => "String",
            "body" => "ConfluentAccountUpdateRequest",
    },
    "v2.ListConfluentResource" => {
            "account_id" => "String",
    },
    "v2.CreateConfluentResource" => {
            "account_id" => "String",
            "body" => "ConfluentResourceRequest",
    },
    "v2.DeleteConfluentResource" => {
            "account_id" => "String",
            "resource_id" => "String",
    },
    "v2.GetConfluentResource" => {
            "account_id" => "String",
            "resource_id" => "String",
    },
    "v2.UpdateConfluentResource" => {
            "account_id" => "String",
            "resource_id" => "String",
            "body" => "ConfluentResourceRequest",
    },
    "v2.CreateFastlyAccount" => {
            "body" => "FastlyAccountCreateRequest",
    },
    "v2.DeleteFastlyAccount" => {
            "account_id" => "String",
    },
    "v2.GetFastlyAccount" => {
            "account_id" => "String",
    },
    "v2.UpdateFastlyAccount" => {
            "account_id" => "String",
            "body" => "FastlyAccountUpdateRequest",
    },
    "v2.ListFastlyServices" => {
            "account_id" => "String",
    },
    "v2.CreateFastlyService" => {
            "account_id" => "String",
            "body" => "FastlyServiceRequest",
    },
    "v2.DeleteFastlyService" => {
            "account_id" => "String",
            "service_id" => "String",
    },
    "v2.GetFastlyService" => {
            "account_id" => "String",
            "service_id" => "String",
    },
    "v2.UpdateFastlyService" => {
            "account_id" => "String",
            "service_id" => "String",
            "body" => "FastlyServiceRequest",
    },
    "v2.CreateOktaAccount" => {
            "body" => "OktaAccountRequest",
    },
    "v2.DeleteOktaAccount" => {
            "account_id" => "String",
    },
    "v2.GetOktaAccount" => {
            "account_id" => "String",
    },
    "v2.UpdateOktaAccount" => {
            "account_id" => "String",
            "body" => "OktaAccountUpdateRequest",
    },
    "v2.UpdateIPAllowlist" => {
            "body" => "IPAllowlistUpdateRequest",
    },
    "v2.SubmitLog" => {
            "content_encoding" => "ContentEncoding",
            "ddtags" => "String",
            "body" => "Array<HTTPLogItem>",
    },
    "v2.AggregateLogs" => {
            "body" => "LogsAggregateRequest",
    },
    "v2.ListLogsGet" => {
            "filter_query" => "String",
            "filter_indexes" => "Array<String>",
            "filter_from" => "Time",
            "filter_to" => "Time",
            "filter_storage_tier" => "LogsStorageTier",
            "sort" => "LogsSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.ListLogs" => {
            "body" => "LogsListRequest",
    },
    "v2.UpdateLogsArchiveOrder" => {
            "body" => "LogsArchiveOrder",
    },
    "v2.CreateLogsArchive" => {
            "body" => "LogsArchiveCreateRequest",
    },
    "v2.DeleteLogsArchive" => {
            "archive_id" => "String",
    },
    "v2.GetLogsArchive" => {
            "archive_id" => "String",
    },
    "v2.UpdateLogsArchive" => {
            "archive_id" => "String",
            "body" => "LogsArchiveCreateRequest",
    },
    "v2.RemoveRoleFromArchive" => {
            "archive_id" => "String",
            "body" => "RelationshipToRole",
    },
    "v2.ListArchiveReadRoles" => {
            "archive_id" => "String",
    },
    "v2.AddReadRoleToArchive" => {
            "archive_id" => "String",
            "body" => "RelationshipToRole",
    },
    "v2.CreateLogsCustomDestination" => {
            "body" => "CustomDestinationCreateRequest",
    },
    "v2.DeleteLogsCustomDestination" => {
            "custom_destination_id" => "String",
    },
    "v2.GetLogsCustomDestination" => {
            "custom_destination_id" => "String",
    },
    "v2.UpdateLogsCustomDestination" => {
            "custom_destination_id" => "String",
            "body" => "CustomDestinationUpdateRequest",
    },
    "v2.CreateLogsMetric" => {
            "body" => "LogsMetricCreateRequest",
    },
    "v2.DeleteLogsMetric" => {
            "metric_id" => "String",
    },
    "v2.GetLogsMetric" => {
            "metric_id" => "String",
    },
    "v2.UpdateLogsMetric" => {
            "metric_id" => "String",
            "body" => "LogsMetricUpdateRequest",
    },
    "v2.ListTagConfigurations" => {
            "filter_configured" => "Boolean",
            "filter_tags_configured" => "String",
            "filter_metric_type" => "MetricTagConfigurationMetricTypes",
            "filter_include_percentiles" => "Boolean",
            "filter_queried" => "Boolean",
            "filter_tags" => "String",
            "window_seconds" => "Integer",
            "page_size" => "Integer",
            "page_cursor" => "String",
    },
    "v2.DeleteBulkTagsMetricsConfiguration" => {
            "body" => "MetricBulkTagConfigDeleteRequest",
    },
    "v2.CreateBulkTagsMetricsConfiguration" => {
            "body" => "MetricBulkTagConfigCreateRequest",
    },
    "v2.ListActiveMetricConfigurations" => {
            "metric_name" => "String",
            "window_seconds" => "Integer",
    },
    "v2.ListTagsByMetricName" => {
            "metric_name" => "String",
    },
    "v2.ListMetricAssets" => {
            "metric_name" => "String",
    },
    "v2.EstimateMetricsOutputSeries" => {
            "metric_name" => "String",
            "filter_groups" => "String",
            "filter_hours_ago" => "Integer",
            "filter_num_aggregations" => "Integer",
            "filter_pct" => "Boolean",
            "filter_timespan_h" => "Integer",
    },
    "v2.DeleteTagConfiguration" => {
            "metric_name" => "String",
    },
    "v2.ListTagConfigurationByName" => {
            "metric_name" => "String",
    },
    "v2.UpdateTagConfiguration" => {
            "metric_name" => "String",
            "body" => "MetricTagConfigurationUpdateRequest",
    },
    "v2.CreateTagConfiguration" => {
            "metric_name" => "String",
            "body" => "MetricTagConfigurationCreateRequest",
    },
    "v2.ListVolumesByMetricName" => {
            "metric_name" => "String",
    },
    "v2.QueryScalarData" => {
            "body" => "ScalarFormulaQueryRequest",
    },
    "v2.QueryTimeseriesData" => {
            "body" => "TimeseriesFormulaQueryRequest",
    },
    "v2.SubmitMetrics" => {
            "content_encoding" => "MetricContentEncoding",
            "body" => "MetricPayload",
    },
    "v2.CreateMonitorConfigPolicy" => {
            "body" => "MonitorConfigPolicyCreateRequest",
    },
    "v2.DeleteMonitorConfigPolicy" => {
            "policy_id" => "String",
    },
    "v2.GetMonitorConfigPolicy" => {
            "policy_id" => "String",
    },
    "v2.UpdateMonitorConfigPolicy" => {
            "policy_id" => "String",
            "body" => "MonitorConfigPolicyEditRequest",
    },
    "v2.ListDevices" => {
            "page_number" => "Integer",
            "page_size" => "Integer",
            "sort" => "String",
            "filter_tag" => "String",
    },
    "v2.GetDevice" => {
            "device_id" => "String",
    },
    "v2.GetInterfaces" => {
            "device_id" => "String",
    },
    "v2.ListDeviceUserTags" => {
            "device_id" => "String",
    },
    "v2.UpdateDeviceUserTags" => {
            "device_id" => "String",
            "body" => "ListTagsResponse",
    },
    "v2.GetOrgConfig" => {
            "org_config_name" => "String",
    },
    "v2.UpdateOrgConfig" => {
            "org_config_name" => "String",
            "body" => "OrgConfigWriteRequest",
    },
    "v2.UploadIdPMetadata" => {
            "idp_file" => "File",
    },
    "v2.ListRoles" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "RolesSort",
            "filter" => "String",
            "filter_id" => "String",
    },
    "v2.CreateRole" => {
            "body" => "RoleCreateRequest",
    },
    "v2.DeleteRole" => {
            "role_id" => "String",
    },
    "v2.GetRole" => {
            "role_id" => "String",
    },
    "v2.UpdateRole" => {
            "role_id" => "String",
            "body" => "RoleUpdateRequest",
    },
    "v2.CloneRole" => {
            "role_id" => "String",
            "body" => "RoleCloneRequest",
    },
    "v2.RemovePermissionFromRole" => {
            "role_id" => "String",
            "body" => "RelationshipToPermission",
    },
    "v2.ListRolePermissions" => {
            "role_id" => "String",
    },
    "v2.AddPermissionToRole" => {
            "role_id" => "String",
            "body" => "RelationshipToPermission",
    },
    "v2.RemoveUserFromRole" => {
            "role_id" => "String",
            "body" => "RelationshipToUser",
    },
    "v2.ListRoleUsers" => {
            "role_id" => "String",
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "String",
            "filter" => "String",
    },
    "v2.AddUserToRole" => {
            "role_id" => "String",
            "body" => "RelationshipToUser",
    },
    "v2.ListFindings" => {
            "page_limit" => "Integer",
            "snapshot_timestamp" => "Integer",
            "page_cursor" => "String",
            "filter_tags" => "String",
            "filter_evaluation_changed_at" => "String",
            "filter_muted" => "Boolean",
            "filter_rule_id" => "String",
            "filter_rule_name" => "String",
            "filter_resource_type" => "String",
            "filter_discovery_timestamp" => "String",
            "filter_evaluation" => "FindingEvaluation",
            "filter_status" => "FindingStatus",
    },
    "v2.MuteFindings" => {
            "body" => "BulkMuteFindingsRequest",
    },
    "v2.GetFinding" => {
            "finding_id" => "String",
            "snapshot_timestamp" => "Integer",
    },
    "v2.CreateSecurityFilter" => {
            "body" => "SecurityFilterCreateRequest",
    },
    "v2.DeleteSecurityFilter" => {
            "security_filter_id" => "String",
    },
    "v2.GetSecurityFilter" => {
            "security_filter_id" => "String",
    },
    "v2.UpdateSecurityFilter" => {
            "security_filter_id" => "String",
            "body" => "SecurityFilterUpdateRequest",
    },
    "v2.CreateSecurityMonitoringSuppression" => {
            "body" => "SecurityMonitoringSuppressionCreateRequest",
    },
    "v2.DeleteSecurityMonitoringSuppression" => {
            "suppression_id" => "String",
    },
    "v2.GetSecurityMonitoringSuppression" => {
            "suppression_id" => "String",
    },
    "v2.UpdateSecurityMonitoringSuppression" => {
            "suppression_id" => "String",
            "body" => "SecurityMonitoringSuppressionUpdateRequest",
    },
    "v2.ListSecurityMonitoringRules" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
    },
    "v2.CreateSecurityMonitoringRule" => {
            "body" => "SecurityMonitoringRuleCreatePayload",
    },
    "v2.ConvertSecurityMonitoringRuleFromJSONToTerraform" => {
            "body" => "SecurityMonitoringRuleConvertPayload",
    },
    "v2.TestSecurityMonitoringRule" => {
            "body" => "SecurityMonitoringRuleTestRequest",
    },
    "v2.ValidateSecurityMonitoringRule" => {
            "body" => "SecurityMonitoringRuleValidatePayload",
    },
    "v2.DeleteSecurityMonitoringRule" => {
            "rule_id" => "String",
    },
    "v2.GetSecurityMonitoringRule" => {
            "rule_id" => "String",
    },
    "v2.UpdateSecurityMonitoringRule" => {
            "rule_id" => "String",
            "body" => "SecurityMonitoringRuleUpdatePayload",
    },
    "v2.ConvertExistingSecurityMonitoringRule" => {
            "rule_id" => "String",
    },
    "v2.TestExistingSecurityMonitoringRule" => {
            "rule_id" => "String",
            "body" => "SecurityMonitoringRuleTestRequest",
    },
    "v2.ListSecurityMonitoringSignals" => {
            "filter_query" => "String",
            "filter_from" => "Time",
            "filter_to" => "Time",
            "sort" => "SecurityMonitoringSignalsSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.SearchSecurityMonitoringSignals" => {
            "body" => "SecurityMonitoringSignalListRequest",
    },
    "v2.GetSecurityMonitoringSignal" => {
            "signal_id" => "String",
    },
    "v2.EditSecurityMonitoringSignalAssignee" => {
            "signal_id" => "String",
            "body" => "SecurityMonitoringSignalAssigneeUpdateRequest",
    },
    "v2.EditSecurityMonitoringSignalIncidents" => {
            "signal_id" => "String",
            "body" => "SecurityMonitoringSignalIncidentsUpdateRequest",
    },
    "v2.EditSecurityMonitoringSignalState" => {
            "signal_id" => "String",
            "body" => "SecurityMonitoringSignalStateUpdateRequest",
    },
    "v2.ListPowerpacks" => {
            "page_limit" => "Integer",
            "page_offset" => "Integer",
    },
    "v2.CreatePowerpack" => {
            "body" => "Powerpack",
    },
    "v2.DeletePowerpack" => {
            "powerpack_id" => "String",
    },
    "v2.GetPowerpack" => {
            "powerpack_id" => "String",
    },
    "v2.UpdatePowerpack" => {
            "powerpack_id" => "String",
            "body" => "Powerpack",
    },
    "v2.ListProcesses" => {
            "search" => "String",
            "tags" => "String",
            "from" => "Integer",
            "to" => "Integer",
            "page_limit" => "Integer",
            "page_cursor" => "String",
    },
    "v2.CreateCSMThreatsAgentRule" => {
            "body" => "CloudWorkloadSecurityAgentRuleCreateRequest",
    },
    "v2.DeleteCSMThreatsAgentRule" => {
            "agent_rule_id" => "String",
    },
    "v2.GetCSMThreatsAgentRule" => {
            "agent_rule_id" => "String",
    },
    "v2.UpdateCSMThreatsAgentRule" => {
            "agent_rule_id" => "String",
            "body" => "CloudWorkloadSecurityAgentRuleUpdateRequest",
    },
    "v2.CreateCloudWorkloadSecurityAgentRule" => {
            "body" => "CloudWorkloadSecurityAgentRuleCreateRequest",
    },
    "v2.DeleteCloudWorkloadSecurityAgentRule" => {
            "agent_rule_id" => "String",
    },
    "v2.GetCloudWorkloadSecurityAgentRule" => {
            "agent_rule_id" => "String",
    },
    "v2.UpdateCloudWorkloadSecurityAgentRule" => {
            "agent_rule_id" => "String",
            "body" => "CloudWorkloadSecurityAgentRuleUpdateRequest",
    },
    "v2.DeleteRestrictionPolicy" => {
            "resource_id" => "String",
    },
    "v2.GetRestrictionPolicy" => {
            "resource_id" => "String",
    },
    "v2.UpdateRestrictionPolicy" => {
            "resource_id" => "String",
            "body" => "RestrictionPolicyUpdateRequest",
    },
    "v2.AggregateRUMEvents" => {
            "body" => "RUMAggregateRequest",
    },
    "v2.CreateRUMApplication" => {
            "body" => "RUMApplicationCreateRequest",
    },
    "v2.DeleteRUMApplication" => {
            "id" => "String",
    },
    "v2.GetRUMApplication" => {
            "id" => "String",
    },
    "v2.UpdateRUMApplication" => {
            "id" => "String",
            "body" => "RUMApplicationUpdateRequest",
    },
    "v2.ListRUMEvents" => {
            "filter_query" => "String",
            "filter_from" => "Time",
            "filter_to" => "Time",
            "sort" => "RUMSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.SearchRUMEvents" => {
            "body" => "RUMSearchEventsRequest",
    },
    "v2.ListScorecardOutcomes" => {
            "page_size" => "Integer",
            "page_offset" => "Integer",
            "include" => "String",
            "fields_outcome" => "String",
            "fields_rule" => "String",
            "filter_outcome_service_name" => "String",
            "filter_outcome_state" => "String",
            "filter_rule_enabled" => "Boolean",
            "filter_rule_id" => "String",
            "filter_rule_name" => "String",
    },
    "v2.CreateScorecardOutcomesBatch" => {
            "body" => "OutcomesBatchRequest",
    },
    "v2.ListScorecardRules" => {
            "page_size" => "Integer",
            "page_offset" => "Integer",
            "include" => "String",
            "filter_rule_id" => "String",
            "filter_rule_enabled" => "Boolean",
            "filter_rule_custom" => "Boolean",
            "filter_rule_name" => "String",
            "filter_rule_description" => "String",
            "fields_rule" => "String",
            "fields_scorecard" => "String",
    },
    "v2.CreateScorecardRule" => {
            "body" => "CreateRuleRequest",
    },
    "v2.DeleteScorecardRule" => {
            "rule_id" => "String",
    },
    "v2.UpdateScorecardRule" => {
            "rule_id" => "String",
            "body" => "UpdateRuleRequest",
    },
    "v2.ReorderScanningGroups" => {
            "body" => "SensitiveDataScannerConfigRequest",
    },
    "v2.CreateScanningGroup" => {
            "body" => "SensitiveDataScannerGroupCreateRequest",
    },
    "v2.DeleteScanningGroup" => {
            "group_id" => "String",
            "body" => "SensitiveDataScannerGroupDeleteRequest",
    },
    "v2.UpdateScanningGroup" => {
            "group_id" => "String",
            "body" => "SensitiveDataScannerGroupUpdateRequest",
    },
    "v2.CreateScanningRule" => {
            "body" => "SensitiveDataScannerRuleCreateRequest",
    },
    "v2.DeleteScanningRule" => {
            "rule_id" => "String",
            "body" => "SensitiveDataScannerRuleDeleteRequest",
    },
    "v2.UpdateScanningRule" => {
            "rule_id" => "String",
            "body" => "SensitiveDataScannerRuleUpdateRequest",
    },
    "v2.CreateServiceAccount" => {
            "body" => "ServiceAccountCreateRequest",
    },
    "v2.ListServiceAccountApplicationKeys" => {
            "service_account_id" => "String",
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "ApplicationKeysSort",
            "filter" => "String",
            "filter_created_at_start" => "String",
            "filter_created_at_end" => "String",
    },
    "v2.CreateServiceAccountApplicationKey" => {
            "service_account_id" => "String",
            "body" => "ApplicationKeyCreateRequest",
    },
    "v2.DeleteServiceAccountApplicationKey" => {
            "service_account_id" => "String",
            "app_key_id" => "String",
    },
    "v2.GetServiceAccountApplicationKey" => {
            "service_account_id" => "String",
            "app_key_id" => "String",
    },
    "v2.UpdateServiceAccountApplicationKey" => {
            "service_account_id" => "String",
            "app_key_id" => "String",
            "body" => "ApplicationKeyUpdateRequest",
    },
    "v2.ListIncidentServices" => {
            "include" => "IncidentRelatedObject",
            "page_size" => "Integer",
            "page_offset" => "Integer",
            "filter" => "String",
    },
    "v2.CreateIncidentService" => {
            "body" => "IncidentServiceCreateRequest",
    },
    "v2.DeleteIncidentService" => {
            "service_id" => "String",
    },
    "v2.GetIncidentService" => {
            "service_id" => "String",
            "include" => "IncidentRelatedObject",
    },
    "v2.UpdateIncidentService" => {
            "service_id" => "String",
            "body" => "IncidentServiceUpdateRequest",
    },
    "v2.ListServiceDefinitions" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "schema_version" => "ServiceDefinitionSchemaVersions",
    },
    "v2.CreateOrUpdateServiceDefinitions" => {
            "body" => "ServiceDefinitionsCreateRequest",
    },
    "v2.DeleteServiceDefinition" => {
            "service_name" => "String",
    },
    "v2.GetServiceDefinition" => {
            "service_name" => "String",
            "schema_version" => "ServiceDefinitionSchemaVersions",
    },
    "v2.CreateSLOReportJob" => {
            "body" => "SloReportCreateRequest",
    },
    "v2.GetSLOReport" => {
            "report_id" => "String",
    },
    "v2.GetSLOReportJobStatus" => {
            "report_id" => "String",
    },
    "v2.AggregateSpans" => {
            "body" => "SpansAggregateRequest",
    },
    "v2.ListSpansGet" => {
            "filter_query" => "String",
            "filter_from" => "String",
            "filter_to" => "String",
            "sort" => "SpansSort",
            "page_cursor" => "String",
            "page_limit" => "Integer",
    },
    "v2.ListSpans" => {
            "body" => "SpansListRequest",
    },
    "v2.SetOnDemandConcurrencyCap" => {
            "body" => "OnDemandConcurrencyCapAttributes",
    },
    "v2.ListTeams" => {
            "page_number" => "Integer",
            "page_size" => "Integer",
            "sort" => "ListTeamsSort",
            "include" => "Array<ListTeamsInclude>",
            "filter_keyword" => "String",
            "filter_me" => "Boolean",
            "fields_team" => "Array<TeamsField>",
    },
    "v2.CreateTeam" => {
            "body" => "TeamCreateRequest",
    },
    "v2.DeleteTeam" => {
            "team_id" => "String",
    },
    "v2.GetTeam" => {
            "team_id" => "String",
    },
    "v2.UpdateTeam" => {
            "team_id" => "String",
            "body" => "TeamUpdateRequest",
    },
    "v2.GetTeamLinks" => {
            "team_id" => "String",
    },
    "v2.CreateTeamLink" => {
            "team_id" => "String",
            "body" => "TeamLinkCreateRequest",
    },
    "v2.DeleteTeamLink" => {
            "team_id" => "String",
            "link_id" => "String",
    },
    "v2.GetTeamLink" => {
            "team_id" => "String",
            "link_id" => "String",
    },
    "v2.UpdateTeamLink" => {
            "team_id" => "String",
            "link_id" => "String",
            "body" => "TeamLinkCreateRequest",
    },
    "v2.GetTeamMemberships" => {
            "team_id" => "String",
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "GetTeamMembershipsSort",
            "filter_keyword" => "String",
    },
    "v2.CreateTeamMembership" => {
            "team_id" => "String",
            "body" => "UserTeamRequest",
    },
    "v2.DeleteTeamMembership" => {
            "team_id" => "String",
            "user_id" => "String",
    },
    "v2.UpdateTeamMembership" => {
            "team_id" => "String",
            "user_id" => "String",
            "body" => "UserTeamUpdateRequest",
    },
    "v2.GetTeamPermissionSettings" => {
            "team_id" => "String",
    },
    "v2.UpdateTeamPermissionSetting" => {
            "team_id" => "String",
            "action" => "String",
            "body" => "TeamPermissionSettingUpdateRequest",
    },
    "v2.GetUserMemberships" => {
            "user_uuid" => "String",
    },
    "v2.ListIncidentTeams" => {
            "include" => "IncidentRelatedObject",
            "page_size" => "Integer",
            "page_offset" => "Integer",
            "filter" => "String",
    },
    "v2.CreateIncidentTeam" => {
            "body" => "IncidentTeamCreateRequest",
    },
    "v2.DeleteIncidentTeam" => {
            "team_id" => "String",
    },
    "v2.GetIncidentTeam" => {
            "team_id" => "String",
            "include" => "IncidentRelatedObject",
    },
    "v2.UpdateIncidentTeam" => {
            "team_id" => "String",
            "body" => "IncidentTeamUpdateRequest",
    },
    "v2.SendInvitations" => {
            "body" => "UserInvitationsRequest",
    },
    "v2.GetInvitation" => {
            "user_invitation_uuid" => "String",
    },
    "v2.ListUsers" => {
            "page_size" => "Integer",
            "page_number" => "Integer",
            "sort" => "String",
            "sort_dir" => "QuerySortOrder",
            "filter" => "String",
            "filter_status" => "String",
    },
    "v2.CreateUser" => {
            "body" => "UserCreateRequest",
    },
    "v2.DisableUser" => {
            "user_id" => "String",
    },
    "v2.GetUser" => {
            "user_id" => "String",
    },
    "v2.UpdateUser" => {
            "user_id" => "String",
            "body" => "UserUpdateRequest",
    },
    "v2.ListUserOrganizations" => {
            "user_id" => "String",
    },
    "v2.ListUserPermissions" => {
            "user_id" => "String",
    },
    "v2.ListWorkflowInstances" => {
            "workflow_id" => "String",
            "page_size" => "Integer",
            "page_number" => "Integer",
    },
    "v2.CreateWorkflowInstance" => {
            "workflow_id" => "String",
            "body" => "WorkflowInstanceCreateRequest",
    },
    "v2.GetWorkflowInstance" => {
            "workflow_id" => "String",
            "instance_id" => "String",
    },
    "v2.CancelWorkflowInstance" => {
            "workflow_id" => "String",
            "instance_id" => "String",
    },
}