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
  # SLO measures queries.
  class FormulaAndFunctionSLOMeasure
    include BaseEnumModel

    GOOD_EVENTS = "good_events".freeze
    BAD_EVENTS = "bad_events".freeze
    GOOD_MINUTES = "good_minutes".freeze
    BAD_MINUTES = "bad_minutes".freeze
    SLO_STATUS = "slo_status".freeze
    ERROR_BUDGET_REMAINING = "error_budget_remaining".freeze
    BURN_RATE = "burn_rate".freeze
    ERROR_BUDGET_BURNDOWN = "error_budget_burndown".freeze
  end
end
