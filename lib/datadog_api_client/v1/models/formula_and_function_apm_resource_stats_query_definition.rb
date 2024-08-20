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
  # APM resource stats query using formulas and functions.
  class FormulaAndFunctionApmResourceStatsQueryDefinition
    include BaseGenericModel

    # The source organization UUID for cross organization queries. Feature in Private Beta.
    attr_reader :cross_org_uuids

    # Data source for APM resource stats queries.
    attr_reader :data_source

    # APM environment.
    attr_reader :env

    # Array of fields to group results by.
    attr_accessor :group_by

    # Name of this query to use in formulas.
    attr_reader :name

    # Name of operation on service.
    attr_accessor :operation_name

    # Name of the second primary tag used within APM. Required when `primary_tag_value` is specified. See https://docs.datadoghq.com/tracing/guide/setting_primary_tags_to_scope/#add-a-second-primary-tag-in-datadog
    attr_accessor :primary_tag_name

    # Value of the second primary tag by which to filter APM data. `primary_tag_name` must also be specified.
    attr_accessor :primary_tag_value

    # APM resource name.
    attr_accessor :resource_name

    # APM service name.
    attr_reader :service

    # APM resource stat name.
    attr_reader :stat

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cross_org_uuids' => :'cross_org_uuids',
        :'data_source' => :'data_source',
        :'env' => :'env',
        :'group_by' => :'group_by',
        :'name' => :'name',
        :'operation_name' => :'operation_name',
        :'primary_tag_name' => :'primary_tag_name',
        :'primary_tag_value' => :'primary_tag_value',
        :'resource_name' => :'resource_name',
        :'service' => :'service',
        :'stat' => :'stat'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cross_org_uuids' => :'Array<String>',
        :'data_source' => :'FormulaAndFunctionApmResourceStatsDataSource',
        :'env' => :'String',
        :'group_by' => :'Array<String>',
        :'name' => :'String',
        :'operation_name' => :'String',
        :'primary_tag_name' => :'String',
        :'primary_tag_value' => :'String',
        :'resource_name' => :'String',
        :'service' => :'String',
        :'stat' => :'FormulaAndFunctionApmResourceStatName'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsQueryDefinition` initialize method"
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

      if attributes.key?(:'cross_org_uuids')
        if (value = attributes[:'cross_org_uuids']).is_a?(Array)
          self.cross_org_uuids = value
        end
      end

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'env')
        self.env = attributes[:'env']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'operation_name')
        self.operation_name = attributes[:'operation_name']
      end

      if attributes.key?(:'primary_tag_name')
        self.primary_tag_name = attributes[:'primary_tag_name']
      end

      if attributes.key?(:'primary_tag_value')
        self.primary_tag_value = attributes[:'primary_tag_value']
      end

      if attributes.key?(:'resource_name')
        self.resource_name = attributes[:'resource_name']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'stat')
        self.stat = attributes[:'stat']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@cross_org_uuids.nil? && @cross_org_uuids.length > 1
      return false if @data_source.nil?
      return false if @env.nil?
      return false if @name.nil?
      return false if @service.nil?
      return false if @stat.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cross_org_uuids [Object] Object to be assigned
    # @!visibility private
    def cross_org_uuids=(cross_org_uuids)
      if !cross_org_uuids.nil? && cross_org_uuids.length > 1
        fail ArgumentError, 'invalid value for "cross_org_uuids", number of items must be less than or equal to 1.'
      end
      @cross_org_uuids = cross_org_uuids
    end

    # Custom attribute writer method with validation
    # @param data_source [Object] Object to be assigned
    # @!visibility private
    def data_source=(data_source)
      if data_source.nil?
        fail ArgumentError, 'invalid value for "data_source", data_source cannot be nil.'
      end
      @data_source = data_source
    end

    # Custom attribute writer method with validation
    # @param env [Object] Object to be assigned
    # @!visibility private
    def env=(env)
      if env.nil?
        fail ArgumentError, 'invalid value for "env", env cannot be nil.'
      end
      @env = env
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param service [Object] Object to be assigned
    # @!visibility private
    def service=(service)
      if service.nil?
        fail ArgumentError, 'invalid value for "service", service cannot be nil.'
      end
      @service = service
    end

    # Custom attribute writer method with validation
    # @param stat [Object] Object to be assigned
    # @!visibility private
    def stat=(stat)
      if stat.nil?
        fail ArgumentError, 'invalid value for "stat", stat cannot be nil.'
      end
      @stat = stat
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
          cross_org_uuids == o.cross_org_uuids &&
          data_source == o.data_source &&
          env == o.env &&
          group_by == o.group_by &&
          name == o.name &&
          operation_name == o.operation_name &&
          primary_tag_name == o.primary_tag_name &&
          primary_tag_value == o.primary_tag_value &&
          resource_name == o.resource_name &&
          service == o.service &&
          stat == o.stat
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cross_org_uuids, data_source, env, group_by, name, operation_name, primary_tag_name, primary_tag_value, resource_name, service, stat].hash
    end
  end
end
