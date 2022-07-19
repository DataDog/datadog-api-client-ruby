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
  # CI visibility usage in a given hour.
  class UsageCIVisibilityHour
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The number of spans for pipelines in the queried hour.
    attr_accessor :ci_pipeline_indexed_spans

    # The number of spans for tests in the queried hour.
    attr_accessor :ci_test_indexed_spans

    # Shows the total count of all active Git committers for Pipelines in the current month. A committer is active if they commit at least 3 times in a given month.
    attr_accessor :ci_visibility_pipeline_committers

    # The total count of all active Git committers for tests in the current month. A committer is active if they commit at least 3 times in a given month.
    attr_accessor :ci_visibility_test_committers

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'ci_pipeline_indexed_spans' => :'ci_pipeline_indexed_spans',
        :'ci_test_indexed_spans' => :'ci_test_indexed_spans',
        :'ci_visibility_pipeline_committers' => :'ci_visibility_pipeline_committers',
        :'ci_visibility_test_committers' => :'ci_visibility_test_committers',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id'
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
        :'ci_pipeline_indexed_spans' => :'Integer',
        :'ci_test_indexed_spans' => :'Integer',
        :'ci_visibility_pipeline_committers' => :'Integer',
        :'ci_visibility_test_committers' => :'Integer',
        :'org_name' => :'String',
        :'public_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageCIVisibilityHour` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::UsageCIVisibilityHour`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ci_pipeline_indexed_spans')
        self.ci_pipeline_indexed_spans = attributes[:'ci_pipeline_indexed_spans']
      end

      if attributes.key?(:'ci_test_indexed_spans')
        self.ci_test_indexed_spans = attributes[:'ci_test_indexed_spans']
      end

      if attributes.key?(:'ci_visibility_pipeline_committers')
        self.ci_visibility_pipeline_committers = attributes[:'ci_visibility_pipeline_committers']
      end

      if attributes.key?(:'ci_visibility_test_committers')
        self.ci_visibility_test_committers = attributes[:'ci_visibility_test_committers']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ci_pipeline_indexed_spans == o.ci_pipeline_indexed_spans &&
          ci_test_indexed_spans == o.ci_test_indexed_spans &&
          ci_visibility_pipeline_committers == o.ci_visibility_pipeline_committers &&
          ci_visibility_test_committers == o.ci_visibility_test_committers &&
          org_name == o.org_name &&
          public_id == o.public_id
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
      [ci_pipeline_indexed_spans, ci_test_indexed_spans, ci_visibility_pipeline_committers, ci_visibility_test_committers, org_name, public_id].hash
    end
  end
end
