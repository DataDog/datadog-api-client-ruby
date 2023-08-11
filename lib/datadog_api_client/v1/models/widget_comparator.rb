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
  # Comparator to apply.
  class WidgetComparator
    include BaseEnumModel

    EQUAL_TO = "=".freeze
    GREATER_THAN = ">".freeze
    GREATER_THAN_OR_EQUAL_TO = ">=".freeze
    LESS_THAN = "<".freeze
    LESS_THAN_OR_EQUAL_TO = "<=".freeze
  end
end
