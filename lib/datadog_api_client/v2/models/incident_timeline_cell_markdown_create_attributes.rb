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
  # Timeline cell data for Markdown timeline cells for a create request.
  class IncidentTimelineCellMarkdownCreateAttributes
    include BaseGenericModel

    # Type of the Markdown timeline cell.
    attr_reader :cell_type

    # The Markdown timeline cell contents.
    attr_reader :content

    # A flag indicating whether the timeline cell is important and should be highlighted.
    attr_accessor :important

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cell_type' => :'cell_type',
        :'content' => :'content',
        :'important' => :'important'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cell_type' => :'IncidentTimelineCellMarkdownContentType',
        :'content' => :'IncidentTimelineCellMarkdownCreateAttributesContent',
        :'important' => :'Boolean'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cell_type')
        self.cell_type = attributes[:'cell_type']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'important')
        self.important = attributes[:'important']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @cell_type.nil?
      return false if @content.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cell_type [Object] Object to be assigned
    # @!visibility private
    def cell_type=(cell_type)
      if cell_type.nil?
        fail ArgumentError, 'invalid value for "cell_type", cell_type cannot be nil.'
      end
      @cell_type = cell_type
    end

    # Custom attribute writer method with validation
    # @param content [Object] Object to be assigned
    # @!visibility private
    def content=(content)
      if content.nil?
        fail ArgumentError, 'invalid value for "content", content cannot be nil.'
      end
      @content = content
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cell_type == o.cell_type &&
          content == o.content &&
          important == o.important
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cell_type, content, important].hash
    end
  end
end
