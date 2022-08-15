=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Widget sorting methods.
  class WidgetMonitorSummarySort
    include BaseEnumModel

    NAME = "name".freeze
    GROUP = "group".freeze
    STATUS = "status".freeze
    TAGS = "tags".freeze
    TRIGGERED = "triggered".freeze
    GROUP_ASCENDING = "group,asc".freeze
    GROUP_DESCENDING = "group,desc".freeze
    NAME_ASCENDING = "name,asc".freeze
    NAME_DESCENDING = "name,desc".freeze
    STATUS_ASCENDING = "status,asc".freeze
    STATUS_DESCENDING = "status,desc".freeze
    TAGS_ASCENDING = "tags,asc".freeze
    TAGS_DESCENDING = "tags,desc".freeze
    TRIGGERED_ASCENDING = "triggered,asc".freeze
    TRIGGERED_DESCENDING = "triggered,desc".freeze
    PRIORITY_ASCENDING = "priority,asc".freeze
    PRIORITY_DESCENDING = "priority,desc".freeze
  end
end
