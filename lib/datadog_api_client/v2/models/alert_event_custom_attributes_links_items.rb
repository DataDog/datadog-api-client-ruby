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
  # A link.
  class AlertEventCustomAttributesLinksItems
    include BaseGenericModel

    # The category of the link.
    attr_reader :category

    # The display text of the link. Limited to 300 characters.
    attr_reader :title

    # The URL of the link. Limited to 2048 characters.
    attr_reader :url

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'category' => :'category',
        :'title' => :'title',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'category' => :'AlertEventCustomAttributesLinksItemsCategory',
        :'title' => :'String',
        :'url' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::AlertEventCustomAttributesLinksItems` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::AlertEventCustomAttributesLinksItems`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @category.nil?
      return false if !@title.nil? && @title.to_s.length > 300
      return false if !@title.nil? && @title.to_s.length < 1
      return false if @url.nil?
      return false if @url.to_s.length > 2048
      return false if @url.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param category [Object] Object to be assigned
    # @!visibility private
    def category=(category)
      if category.nil?
        fail ArgumentError, 'invalid value for "category", category cannot be nil.'
      end
      @category = category
    end

    # Custom attribute writer method with validation
    # @param title [Object] Object to be assigned
    # @!visibility private
    def title=(title)
      if !title.nil? && title.to_s.length > 300
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 300.'
      end
      if !title.nil? && title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end
      @title = title
    end

    # Custom attribute writer method with validation
    # @param url [Object] Object to be assigned
    # @!visibility private
    def url=(url)
      if url.nil?
        fail ArgumentError, 'invalid value for "url", url cannot be nil.'
      end
      if url.to_s.length > 2048
        fail ArgumentError, 'invalid value for "url", the character length must be smaller than or equal to 2048.'
      end
      if url.to_s.length < 1
        fail ArgumentError, 'invalid value for "url", the character length must be great than or equal to 1.'
      end
      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          title == o.title &&
          url == o.url
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [category, title, url].hash
    end
  end
end
