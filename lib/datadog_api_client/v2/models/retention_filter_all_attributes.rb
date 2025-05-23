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
  # The attributes of the retention filter.
  class RetentionFilterAllAttributes
    include BaseGenericModel

    # The creation timestamp of the retention filter.
    attr_accessor :created_at

    # The creator of the retention filter.
    attr_accessor :created_by

    # Shows whether the filter can be edited.
    attr_accessor :editable

    # The status of the retention filter (Enabled/Disabled).
    attr_accessor :enabled

    # The execution order of the retention filter.
    attr_accessor :execution_order

    # The spans filter used to index spans.
    attr_accessor :filter

    # The type of retention filter.
    attr_accessor :filter_type

    # The modification timestamp of the retention filter.
    attr_accessor :modified_at

    # The modifier of the retention filter.
    attr_accessor :modified_by

    # The name of the retention filter.
    attr_accessor :name

    # Sample rate to apply to spans going through this retention filter.
    # A value of 1.0 keeps all spans matching the query.
    attr_accessor :rate

    # Sample rate to apply to traces containing spans going through this retention filter.
    # A value of 1.0 keeps all traces with spans matching the query.
    attr_accessor :trace_rate

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'created_by' => :'created_by',
        :'editable' => :'editable',
        :'enabled' => :'enabled',
        :'execution_order' => :'execution_order',
        :'filter' => :'filter',
        :'filter_type' => :'filter_type',
        :'modified_at' => :'modified_at',
        :'modified_by' => :'modified_by',
        :'name' => :'name',
        :'rate' => :'rate',
        :'trace_rate' => :'trace_rate'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'Integer',
        :'created_by' => :'String',
        :'editable' => :'Boolean',
        :'enabled' => :'Boolean',
        :'execution_order' => :'Integer',
        :'filter' => :'SpansFilter',
        :'filter_type' => :'RetentionFilterAllType',
        :'modified_at' => :'Integer',
        :'modified_by' => :'String',
        :'name' => :'String',
        :'rate' => :'Float',
        :'trace_rate' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::RetentionFilterAllAttributes` initialize method"
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

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'editable')
        self.editable = attributes[:'editable']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'execution_order')
        self.execution_order = attributes[:'execution_order']
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'filter_type')
        self.filter_type = attributes[:'filter_type']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'modified_by')
        self.modified_by = attributes[:'modified_by']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'trace_rate')
        self.trace_rate = attributes[:'trace_rate']
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
          created_at == o.created_at &&
          created_by == o.created_by &&
          editable == o.editable &&
          enabled == o.enabled &&
          execution_order == o.execution_order &&
          filter == o.filter &&
          filter_type == o.filter_type &&
          modified_at == o.modified_at &&
          modified_by == o.modified_by &&
          name == o.name &&
          rate == o.rate &&
          trace_rate == o.trace_rate &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, created_by, editable, enabled, execution_order, filter, filter_type, modified_at, modified_by, name, rate, trace_rate, additional_properties].hash
    end
  end
end
