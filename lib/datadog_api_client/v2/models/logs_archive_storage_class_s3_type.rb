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
  # The storage class where the archive will be stored.
  class LogsArchiveStorageClassS3Type
    include BaseEnumModel

    STANDARD = "STANDARD".freeze
    STANDARD_IA = "STANDARD_IA".freeze
    ONEZONE_IA = "ONEZONE_IA".freeze
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING".freeze
    GLACIER_IR = "GLACIER_IR".freeze
  end
end
