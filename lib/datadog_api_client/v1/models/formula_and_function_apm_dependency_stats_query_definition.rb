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
  # A formula and functions APM dependency stats query.
  class FormulaAndFunctionApmDependencyStatsQueryDefinition
    include DatadogAPIClient::BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Data source for APM dependency stats queries.
    attr_accessor :data_source

    # APM environment.
    attr_accessor :env

    # Determines whether stats for upstream or downstream dependencies should be queried.
    attr_accessor :is_upstream

    # Name of query to use in formulas.
    attr_accessor :name

    # Name of operation on service.
    attr_accessor :operation_name

    # The name of the second primary tag used within APM; required when `primary_tag_value` is specified. See https://docs.datadoghq.com/tracing/guide/setting_primary_tags_to_scope/#add-a-second-primary-tag-in-datadog.
    attr_accessor :primary_tag_name

    # Filter APM data by the second primary tag. `primary_tag_name` must also be specified.
    attr_accessor :primary_tag_value

    # APM resource.
    attr_accessor :resource_name

    # APM service.
    attr_accessor :service

    # APM statistic.
    attr_accessor :stat

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'data_source' => :'data_source',
        :'env' => :'env',
        :'is_upstream' => :'is_upstream',
        :'name' => :'name',
        :'operation_name' => :'operation_name',
        :'primary_tag_name' => :'primary_tag_name',
        :'primary_tag_value' => :'primary_tag_value',
        :'resource_name' => :'resource_name',
        :'service' => :'service',
        :'stat' => :'stat'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'data_source' => :'FormulaAndFunctionApmDependencyStatsDataSource',
        :'env' => :'String',
        :'is_upstream' => :'Boolean',
        :'name' => :'String',
        :'operation_name' => :'String',
        :'primary_tag_name' => :'String',
        :'primary_tag_value' => :'String',
        :'resource_name' => :'String',
        :'service' => :'String',
        :'stat' => :'FormulaAndFunctionApmDependencyStatName'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::FormulaAndFunctionApmDependencyStatsQueryDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::FormulaAndFunctionApmDependencyStatsQueryDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'env')
        self.env = attributes[:'env']
      end

      if attributes.key?(:'is_upstream')
        self.is_upstream = attributes[:'is_upstream']
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
      return false if @data_source.nil?
      return false if @env.nil?
      return false if @name.nil?
      return false if @operation_name.nil?
      return false if @resource_name.nil?
      return false if @service.nil?
      return false if @stat.nil?
      true
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
    # @param operation_name [Object] Object to be assigned
    # @!visibility private
    def operation_name=(operation_name)
      if operation_name.nil?
        fail ArgumentError, 'invalid value for "operation_name", operation_name cannot be nil.'
      end
      @operation_name = operation_name
    end

    # Custom attribute writer method with validation
    # @param resource_name [Object] Object to be assigned
    # @!visibility private
    def resource_name=(resource_name)
      if resource_name.nil?
        fail ArgumentError, 'invalid value for "resource_name", resource_name cannot be nil.'
      end
      @resource_name = resource_name
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

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_source == o.data_source &&
          env == o.env &&
          is_upstream == o.is_upstream &&
          name == o.name &&
          operation_name == o.operation_name &&
          primary_tag_name == o.primary_tag_name &&
          primary_tag_value == o.primary_tag_value &&
          resource_name == o.resource_name &&
          service == o.service &&
          stat == o.stat
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [data_source, env, is_upstream, name, operation_name, primary_tag_name, primary_tag_value, resource_name, service, stat].hash
    end
  end
end
