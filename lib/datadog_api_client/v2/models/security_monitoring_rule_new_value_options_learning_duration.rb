=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # The duration in days during which values are learned, and after which signals will be generated for values that
  # weren't learned. If set to 0, a signal will be generated for all new values after the first value is learned.
  class SecurityMonitoringRuleNewValueOptionsLearningDuration
    include BaseEnumModel

    ZERO_DAYS = 0.freeze
    ONE_DAY = 1.freeze
    SEVEN_DAYS = 7.freeze
  end
end
