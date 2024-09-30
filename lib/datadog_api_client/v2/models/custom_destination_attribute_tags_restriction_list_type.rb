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
  # How `forward_tags_restriction_list` parameter should be interpreted.
  # If `ALLOW_LIST`, then only tags whose keys on the forwarded logs match the ones on the restriction list
  # are forwarded.
  # 
  # `BLOCK_LIST` works the opposite way. It does not forward the tags matching the ones on the list.
  class CustomDestinationAttributeTagsRestrictionListType
    include BaseEnumModel

    ALLOW_LIST = "ALLOW_LIST".freeze
    BLOCK_LIST = "BLOCK_LIST".freeze
  end
end