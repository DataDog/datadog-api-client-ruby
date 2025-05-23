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
  # A service level objective object includes a service level indicator, thresholds
  # for one or more timeframes, and metadata (`name`, `description`, `tags`, etc.).
  class ServiceLevelObjective
    include BaseGenericModel

    # Creation timestamp (UNIX time in seconds)
    #
    # Always included in service level objective responses.
    attr_accessor :created_at

    # Object describing the creator of the shared element.
    attr_accessor :creator

    # A user-defined description of the service level objective.
    #
    # Always included in service level objective responses (but may be `null`).
    # Optional in create/update requests.
    attr_accessor :description

    # A list of (up to 100) monitor groups that narrow the scope of a monitor service level objective.
    #
    # Included in service level objective responses if it is not empty. Optional in
    # create/update requests for monitor service level objectives, but may only be
    # used when then length of the `monitor_ids` field is one.
    attr_accessor :groups

    # A unique identifier for the service level objective object.
    #
    # Always included in service level objective responses.
    attr_accessor :id

    # Modification timestamp (UNIX time in seconds)
    #
    # Always included in service level objective responses.
    attr_accessor :modified_at

    # A list of monitor ids that defines the scope of a monitor service level
    # objective. **Required if type is `monitor`**.
    attr_accessor :monitor_ids

    # The union of monitor tags for all monitors referenced by the `monitor_ids`
    # field.
    # Always included in service level objective responses for monitor-based service level
    # objectives (but may be empty). Ignored in create/update requests. Does not
    # affect which monitors are included in the service level objective (that is
    # determined entirely by the `monitor_ids` field).
    attr_accessor :monitor_tags

    # The name of the service level objective object.
    attr_reader :name

    # A metric-based SLO. **Required if type is `metric`**. Note that Datadog only allows the sum by aggregator
    # to be used because this will sum up all request counts instead of averaging them, or taking the max or
    # min of all of those requests.
    attr_accessor :query

    # A generic SLI specification. This is currently used for time-slice SLOs only.
    attr_accessor :sli_specification

    # A list of tags associated with this service level objective.
    # Always included in service level objective responses (but may be empty).
    # Optional in create/update requests.
    attr_accessor :tags

    # The target threshold such that when the service level indicator is above this
    # threshold over the given timeframe, the objective is being met.
    attr_accessor :target_threshold

    # The thresholds (timeframes and associated targets) for this service level
    # objective object.
    attr_reader :thresholds

    # The SLO time window options. Note that "custom" is not a valid option for creating
    # or updating SLOs. It is only used when querying SLO history over custom timeframes.
    attr_accessor :timeframe

    # The type of the service level objective.
    attr_reader :type

    # The optional warning threshold such that when the service level indicator is
    # below this value for the given threshold, but above the target threshold, the
    # objective appears in a "warning" state. This value must be greater than the target
    # threshold.
    attr_accessor :warning_threshold

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'creator' => :'creator',
        :'description' => :'description',
        :'groups' => :'groups',
        :'id' => :'id',
        :'modified_at' => :'modified_at',
        :'monitor_ids' => :'monitor_ids',
        :'monitor_tags' => :'monitor_tags',
        :'name' => :'name',
        :'query' => :'query',
        :'sli_specification' => :'sli_specification',
        :'tags' => :'tags',
        :'target_threshold' => :'target_threshold',
        :'thresholds' => :'thresholds',
        :'timeframe' => :'timeframe',
        :'type' => :'type',
        :'warning_threshold' => :'warning_threshold'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'Integer',
        :'creator' => :'Creator',
        :'description' => :'String',
        :'groups' => :'Array<String>',
        :'id' => :'String',
        :'modified_at' => :'Integer',
        :'monitor_ids' => :'Array<Integer>',
        :'monitor_tags' => :'Array<String>',
        :'name' => :'String',
        :'query' => :'ServiceLevelObjectiveQuery',
        :'sli_specification' => :'SLOSliSpec',
        :'tags' => :'Array<String>',
        :'target_threshold' => :'Float',
        :'thresholds' => :'Array<SLOThreshold>',
        :'timeframe' => :'SLOTimeframe',
        :'type' => :'SLOType',
        :'warning_threshold' => :'Float'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'description',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ServiceLevelObjective` initialize method"
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

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'monitor_ids')
        if (value = attributes[:'monitor_ids']).is_a?(Array)
          self.monitor_ids = value
        end
      end

      if attributes.key?(:'monitor_tags')
        if (value = attributes[:'monitor_tags']).is_a?(Array)
          self.monitor_tags = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'sli_specification')
        self.sli_specification = attributes[:'sli_specification']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'target_threshold')
        self.target_threshold = attributes[:'target_threshold']
      end

      if attributes.key?(:'thresholds')
        if (value = attributes[:'thresholds']).is_a?(Array)
          self.thresholds = value
        end
      end

      if attributes.key?(:'timeframe')
        self.timeframe = attributes[:'timeframe']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'warning_threshold')
        self.warning_threshold = attributes[:'warning_threshold']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @name.nil?
      return false if @thresholds.nil?
      return false if @type.nil?
      true
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
    # @param thresholds [Object] Object to be assigned
    # @!visibility private
    def thresholds=(thresholds)
      if thresholds.nil?
        fail ArgumentError, 'invalid value for "thresholds", thresholds cannot be nil.'
      end
      @thresholds = thresholds
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
          created_at == o.created_at &&
          creator == o.creator &&
          description == o.description &&
          groups == o.groups &&
          id == o.id &&
          modified_at == o.modified_at &&
          monitor_ids == o.monitor_ids &&
          monitor_tags == o.monitor_tags &&
          name == o.name &&
          query == o.query &&
          sli_specification == o.sli_specification &&
          tags == o.tags &&
          target_threshold == o.target_threshold &&
          thresholds == o.thresholds &&
          timeframe == o.timeframe &&
          type == o.type &&
          warning_threshold == o.warning_threshold &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, creator, description, groups, id, modified_at, monitor_ids, monitor_tags, name, query, sli_specification, tags, target_threshold, thresholds, timeframe, type, warning_threshold, additional_properties].hash
    end
  end
end
