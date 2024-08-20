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
  # The object sent with the request to retrieve aggregation buckets of RUM events from your organization.
  class RUMAggregateRequest
    include BaseGenericModel

    # The list of metrics or timeseries to compute for the retrieved buckets.
    attr_accessor :compute

    # The search and filter query settings.
    attr_accessor :filter

    # The rules for the group by.
    attr_accessor :group_by

    # Global query options that are used during the query.
    # Note: Only supply timezone or time offset, not both. Otherwise, the query fails.
    attr_accessor :options

    # Paging attributes for listing events.
    attr_accessor :page

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'compute' => :'compute',
        :'filter' => :'filter',
        :'group_by' => :'group_by',
        :'options' => :'options',
        :'page' => :'page'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'compute' => :'Array<RUMCompute>',
        :'filter' => :'RUMQueryFilter',
        :'group_by' => :'Array<RUMGroupBy>',
        :'options' => :'RUMQueryOptions',
        :'page' => :'RUMQueryPageOptions'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::RUMAggregateRequest` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'compute')
        if (value = attributes[:'compute']).is_a?(Array)
          self.compute = value
        end
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          compute == o.compute &&
          filter == o.filter &&
          group_by == o.group_by &&
          options == o.options &&
          page == o.page
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [compute, filter, group_by, options, page].hash
    end
  end
end
