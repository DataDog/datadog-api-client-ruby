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
  # The object sent with the request to retrieve a list of events from your organization.
  class EventsListRequest
    include BaseGenericModel

    # The search and filter query settings.
    attr_accessor :filter

    # The global query options that are used. Either provide a timezone or a time offset but not both,
    # otherwise the query fails.
    attr_accessor :options

    # Pagination settings.
    attr_accessor :page

    # The sort parameters when querying events.
    attr_accessor :sort

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'filter' => :'filter',
        :'options' => :'options',
        :'page' => :'page',
        :'sort' => :'sort'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'filter' => :'EventsQueryFilter',
        :'options' => :'EventsQueryOptions',
        :'page' => :'EventsRequestPage',
        :'sort' => :'EventsSort'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EventsListRequest` initialize method"
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

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          filter == o.filter &&
          options == o.options &&
          page == o.page &&
          sort == o.sort &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [filter, options, page, sort, additional_properties].hash
    end
  end
end
