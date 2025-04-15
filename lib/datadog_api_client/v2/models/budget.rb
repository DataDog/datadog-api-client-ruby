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
  # A Budget.
  class Budget
    include BaseGenericModel

    # The timestamp when the budget was created.
    attr_accessor :created_at

    # The id of the user that created the budget.
    attr_accessor :created_by

    # The month when the budget ends.
    attr_accessor :end_month

    # The id of the budget.
    attr_accessor :id

    # The cost query for to track against the budget.
    attr_accessor :metrics_query

    # The name of the budget.
    attr_accessor :name

    # The Id of the Org the budget belongs to.
    attr_accessor :org_id

    # The month when the budget starts.
    attr_accessor :start_month

    # The tags for which the budget is created.
    attr_accessor :tags

    # The sum of all budget entries amounts.
    attr_accessor :total_amount

    # The timestamp when the budget was last updated.
    attr_accessor :updated_at

    # The id of the user that created the budget.
    attr_accessor :updated_by

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'created_by' => :'created_by',
        :'end_month' => :'end_month',
        :'id' => :'id',
        :'metrics_query' => :'metrics_query',
        :'name' => :'name',
        :'org_id' => :'org_id',
        :'start_month' => :'start_month',
        :'tags' => :'tags',
        :'total_amount' => :'total_amount',
        :'updated_at' => :'updated_at',
        :'updated_by' => :'updated_by'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'created_at' => :'Integer',
        :'created_by' => :'String',
        :'end_month' => :'Integer',
        :'id' => :'String',
        :'metrics_query' => :'String',
        :'name' => :'String',
        :'org_id' => :'Integer',
        :'start_month' => :'Integer',
        :'tags' => :'Array<String>',
        :'total_amount' => :'Float',
        :'updated_at' => :'Integer',
        :'updated_by' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::Budget` initialize method"
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

      if attributes.key?(:'end_month')
        self.end_month = attributes[:'end_month']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'metrics_query')
        self.metrics_query = attributes[:'metrics_query']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'start_month')
        self.start_month = attributes[:'start_month']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
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
          end_month == o.end_month &&
          id == o.id &&
          metrics_query == o.metrics_query &&
          name == o.name &&
          org_id == o.org_id &&
          start_month == o.start_month &&
          tags == o.tags &&
          total_amount == o.total_amount &&
          updated_at == o.updated_at &&
          updated_by == o.updated_by &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [created_at, created_by, end_month, id, metrics_query, name, org_id, start_month, tags, total_amount, updated_at, updated_by, additional_properties].hash
    end
  end
end
