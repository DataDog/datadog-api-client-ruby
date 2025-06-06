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
  # Definition of a historical job.
  class JobDefinition
    include BaseGenericModel

    # Calculated fields.
    attr_accessor :calculated_fields

    # Cases used for generating job results.
    attr_reader :cases

    # Starting time of data analyzed by the job.
    attr_reader :from

    # Additional grouping to perform on top of the existing groups in the query section. Must be a subset of the existing groups.
    attr_accessor :group_signals_by

    # Index used to load the data.
    attr_reader :index

    # Message for generated results.
    attr_reader :message

    # Job name.
    attr_reader :name

    # Job options.
    attr_accessor :options

    # Queries for selecting logs analyzed by the job.
    attr_reader :queries

    # Reference tables used in the queries.
    attr_accessor :reference_tables

    # Tags for generated signals.
    attr_accessor :tags

    # Cases for generating results from third-party detection method. Only available for third-party detection method.
    attr_accessor :third_party_cases

    # Ending time of data analyzed by the job.
    attr_reader :to

    # Job type.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'calculated_fields' => :'calculatedFields',
        :'cases' => :'cases',
        :'from' => :'from',
        :'group_signals_by' => :'groupSignalsBy',
        :'index' => :'index',
        :'message' => :'message',
        :'name' => :'name',
        :'options' => :'options',
        :'queries' => :'queries',
        :'reference_tables' => :'referenceTables',
        :'tags' => :'tags',
        :'third_party_cases' => :'thirdPartyCases',
        :'to' => :'to',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'calculated_fields' => :'Array<CalculatedField>',
        :'cases' => :'Array<SecurityMonitoringRuleCaseCreate>',
        :'from' => :'Integer',
        :'group_signals_by' => :'Array<String>',
        :'index' => :'String',
        :'message' => :'String',
        :'name' => :'String',
        :'options' => :'HistoricalJobOptions',
        :'queries' => :'Array<HistoricalJobQuery>',
        :'reference_tables' => :'Array<SecurityMonitoringReferenceTable>',
        :'tags' => :'Array<String>',
        :'third_party_cases' => :'Array<SecurityMonitoringThirdPartyRuleCaseCreate>',
        :'to' => :'Integer',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::JobDefinition` initialize method"
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

      if attributes.key?(:'calculated_fields')
        if (value = attributes[:'calculated_fields']).is_a?(Array)
          self.calculated_fields = value
        end
      end

      if attributes.key?(:'cases')
        if (value = attributes[:'cases']).is_a?(Array)
          self.cases = value
        end
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'group_signals_by')
        if (value = attributes[:'group_signals_by']).is_a?(Array)
          self.group_signals_by = value
        end
      end

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'reference_tables')
        if (value = attributes[:'reference_tables']).is_a?(Array)
          self.reference_tables = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'third_party_cases')
        if (value = attributes[:'third_party_cases']).is_a?(Array)
          self.third_party_cases = value
        end
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @cases.nil?
      return false if @from.nil?
      return false if @index.nil?
      return false if @message.nil?
      return false if @name.nil?
      return false if @queries.nil?
      return false if @to.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cases [Object] Object to be assigned
    # @!visibility private
    def cases=(cases)
      if cases.nil?
        fail ArgumentError, 'invalid value for "cases", cases cannot be nil.'
      end
      @cases = cases
    end

    # Custom attribute writer method with validation
    # @param from [Object] Object to be assigned
    # @!visibility private
    def from=(from)
      if from.nil?
        fail ArgumentError, 'invalid value for "from", from cannot be nil.'
      end
      @from = from
    end

    # Custom attribute writer method with validation
    # @param index [Object] Object to be assigned
    # @!visibility private
    def index=(index)
      if index.nil?
        fail ArgumentError, 'invalid value for "index", index cannot be nil.'
      end
      @index = index
    end

    # Custom attribute writer method with validation
    # @param message [Object] Object to be assigned
    # @!visibility private
    def message=(message)
      if message.nil?
        fail ArgumentError, 'invalid value for "message", message cannot be nil.'
      end
      @message = message
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
    # @param queries [Object] Object to be assigned
    # @!visibility private
    def queries=(queries)
      if queries.nil?
        fail ArgumentError, 'invalid value for "queries", queries cannot be nil.'
      end
      @queries = queries
    end

    # Custom attribute writer method with validation
    # @param to [Object] Object to be assigned
    # @!visibility private
    def to=(to)
      if to.nil?
        fail ArgumentError, 'invalid value for "to", to cannot be nil.'
      end
      @to = to
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
          calculated_fields == o.calculated_fields &&
          cases == o.cases &&
          from == o.from &&
          group_signals_by == o.group_signals_by &&
          index == o.index &&
          message == o.message &&
          name == o.name &&
          options == o.options &&
          queries == o.queries &&
          reference_tables == o.reference_tables &&
          tags == o.tags &&
          third_party_cases == o.third_party_cases &&
          to == o.to &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [calculated_fields, cases, from, group_signals_by, index, message, name, options, queries, reference_tables, tags, third_party_cases, to, type, additional_properties].hash
    end
  end
end
