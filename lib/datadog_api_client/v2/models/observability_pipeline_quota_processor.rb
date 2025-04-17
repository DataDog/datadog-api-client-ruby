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
  # The Quota Processor measures logging traffic for logs that match a specified filter. When the configured daily quota is met, the processor can drop or alert.
  class ObservabilityPipelineQuotaProcessor
    include BaseGenericModel

    # If set to `true`, logs that matched the quota filter and sent after the quota has been met are dropped; only logs that did not match the filter query continue through the pipeline.
    attr_reader :drop_events

    # The unique identifier for this component. Used to reference this component in other parts of the pipeline (for example, as the `input` to downstream components).
    attr_reader :id

    # If `true`, the processor skips quota checks when partition fields are missing from the logs.
    attr_accessor :ignore_when_missing_partitions

    # A Datadog search query used to determine which logs this processor targets.
    attr_reader :include

    # A list of component IDs whose output is used as the `input` for this component.
    attr_reader :inputs

    # The maximum amount of data or number of events allowed before the quota is enforced. Can be specified in bytes or events.
    attr_reader :limit

    # Name for identifying the processor.
    attr_reader :name

    # A list of alternate quota rules that apply to specific sets of events, identified by matching field values. Each override can define a custom limit.
    attr_accessor :overrides

    # A list of fields used to segment log traffic for quota enforcement. Quotas are tracked independently by unique combinations of these field values.
    attr_accessor :partition_fields

    # The processor type. The value should always be `quota`.
    attr_reader :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'drop_events' => :'drop_events',
        :'id' => :'id',
        :'ignore_when_missing_partitions' => :'ignore_when_missing_partitions',
        :'include' => :'include',
        :'inputs' => :'inputs',
        :'limit' => :'limit',
        :'name' => :'name',
        :'overrides' => :'overrides',
        :'partition_fields' => :'partition_fields',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'drop_events' => :'Boolean',
        :'id' => :'String',
        :'ignore_when_missing_partitions' => :'Boolean',
        :'include' => :'String',
        :'inputs' => :'Array<String>',
        :'limit' => :'ObservabilityPipelineQuotaProcessorLimit',
        :'name' => :'String',
        :'overrides' => :'Array<ObservabilityPipelineQuotaProcessorOverride>',
        :'partition_fields' => :'Array<String>',
        :'type' => :'ObservabilityPipelineQuotaProcessorType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ObservabilityPipelineQuotaProcessor` initialize method"
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

      if attributes.key?(:'drop_events')
        self.drop_events = attributes[:'drop_events']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'ignore_when_missing_partitions')
        self.ignore_when_missing_partitions = attributes[:'ignore_when_missing_partitions']
      end

      if attributes.key?(:'include')
        self.include = attributes[:'include']
      end

      if attributes.key?(:'inputs')
        if (value = attributes[:'inputs']).is_a?(Array)
          self.inputs = value
        end
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'overrides')
        if (value = attributes[:'overrides']).is_a?(Array)
          self.overrides = value
        end
      end

      if attributes.key?(:'partition_fields')
        if (value = attributes[:'partition_fields']).is_a?(Array)
          self.partition_fields = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @drop_events.nil?
      return false if @id.nil?
      return false if @include.nil?
      return false if @inputs.nil?
      return false if @limit.nil?
      return false if @name.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param drop_events [Object] Object to be assigned
    # @!visibility private
    def drop_events=(drop_events)
      if drop_events.nil?
        fail ArgumentError, 'invalid value for "drop_events", drop_events cannot be nil.'
      end
      @drop_events = drop_events
    end

    # Custom attribute writer method with validation
    # @param id [Object] Object to be assigned
    # @!visibility private
    def id=(id)
      if id.nil?
        fail ArgumentError, 'invalid value for "id", id cannot be nil.'
      end
      @id = id
    end

    # Custom attribute writer method with validation
    # @param include [Object] Object to be assigned
    # @!visibility private
    def include=(include)
      if include.nil?
        fail ArgumentError, 'invalid value for "include", include cannot be nil.'
      end
      @include = include
    end

    # Custom attribute writer method with validation
    # @param inputs [Object] Object to be assigned
    # @!visibility private
    def inputs=(inputs)
      if inputs.nil?
        fail ArgumentError, 'invalid value for "inputs", inputs cannot be nil.'
      end
      @inputs = inputs
    end

    # Custom attribute writer method with validation
    # @param limit [Object] Object to be assigned
    # @!visibility private
    def limit=(limit)
      if limit.nil?
        fail ArgumentError, 'invalid value for "limit", limit cannot be nil.'
      end
      @limit = limit
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
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
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
          drop_events == o.drop_events &&
          id == o.id &&
          ignore_when_missing_partitions == o.ignore_when_missing_partitions &&
          include == o.include &&
          inputs == o.inputs &&
          limit == o.limit &&
          name == o.name &&
          overrides == o.overrides &&
          partition_fields == o.partition_fields &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [drop_events, id, ignore_when_missing_partitions, include, inputs, limit, name, overrides, partition_fields, type, additional_properties].hash
    end
  end
end
