=begin
#Etsy Open API v3

#<div class=\"wt-text-body-01\"><p class=\"wt-pt-xs-2 wt-pb-xs-2\">Etsy's Open API provides a simple RESTful interface for various Etsy.com features. The API endpoints are meant to replace Etsy's Open API v2, which is scheduled to end service in 2022.</p><p class=\"wt-pb-xs-2\">All of the endpoints are callable and the majority of the API endpoints are now in a beta phase. This means we do not expect to make any breaking changes before our general release. A handful of endpoints are currently interface stubs (labeled “Feedback Only”) and returns a \"501 Not Implemented\" response code when called.</p><p class=\"wt-pb-xs-2\">If you'd like to report an issue or provide feedback on the API design, <a target=\"_blank\" class=\"wt-text-link wt-p-xs-0\" href=\"https://github.com/etsy/open-api/issues/new/choose\">please add an issue in Github</a>.</p></div>&copy; 2021-2022 Etsy, Inc. All Rights Reserved. Use of this code is subject to Etsy's <a class='wt-text-link wt-p-xs-0' target='_blank' href='https://www.etsy.com/legal/api'>API Developer Terms of Use</a>.

The version of the OpenAPI document: 3.0.0
Contact: developers@etsy.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module EtsyApi
  # The list of requested resources.
  class ShopShippingProfileDestinationsResultsInner
    # The numeric ID of the shipping profile destination in the [shipping profile](/documentation/reference#tag/Shop-ShippingProfile) associated with the listing.
    attr_accessor :shipping_profile_destination_id

    # The numeric ID of the shipping profile.
    attr_accessor :shipping_profile_id

    # The ISO code of the country from which the listing ships.
    attr_accessor :origin_country_iso

    # The ISO code of the country to which the listing ships. If null, request sets destination to destination_region. Required if destination_region is null or not provided.
    attr_accessor :destination_country_iso

    # The code of the region to which the listing ships. A region represents a set of countries. Supported regions are Europe Union and Non-Europe Union (countries in Europe not in EU). If \\`none\\`, request sets destination to destination_country_iso. Required if destination_country_iso is null or not provided.
    attr_accessor :destination_region

    attr_accessor :primary_cost

    attr_accessor :secondary_cost

    # The unique ID of a supported shipping carrier, which is used to calculate an Estimated Delivery Date. **Required with `mail_class`** if `min_delivery_days` and `max_delivery_days` are null.
    attr_accessor :shipping_carrier_id

    # The unique ID string of a shipping carrier's mail class, which is used to calculate an estimated delivery date. **Required with `shipping_carrier_id`** if `min_delivery_days` and `max_delivery_days` are null.
    attr_accessor :mail_class

    # The minimum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `max_delivery_days`** if `mail_class` is null.
    attr_accessor :min_delivery_days

    # The maximum number of business days a buyer can expect to wait to receive their purchased item once it has shipped. **Required with `min_delivery_days`** if `mail_class` is null.
    attr_accessor :max_delivery_days

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'shipping_profile_destination_id' => :'shipping_profile_destination_id',
        :'shipping_profile_id' => :'shipping_profile_id',
        :'origin_country_iso' => :'origin_country_iso',
        :'destination_country_iso' => :'destination_country_iso',
        :'destination_region' => :'destination_region',
        :'primary_cost' => :'primary_cost',
        :'secondary_cost' => :'secondary_cost',
        :'shipping_carrier_id' => :'shipping_carrier_id',
        :'mail_class' => :'mail_class',
        :'min_delivery_days' => :'min_delivery_days',
        :'max_delivery_days' => :'max_delivery_days'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shipping_profile_destination_id' => :'Integer',
        :'shipping_profile_id' => :'Integer',
        :'origin_country_iso' => :'String',
        :'destination_country_iso' => :'String',
        :'destination_region' => :'String',
        :'primary_cost' => :'ShopShippingProfileDestinationPrimaryCost',
        :'secondary_cost' => :'ShopShippingProfileDestinationSecondaryCost',
        :'shipping_carrier_id' => :'Integer',
        :'mail_class' => :'String',
        :'min_delivery_days' => :'Integer',
        :'max_delivery_days' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'shipping_carrier_id',
        :'mail_class',
        :'min_delivery_days',
        :'max_delivery_days'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ShopShippingProfileDestination'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EtsyApi::ShopShippingProfileDestinationsResultsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EtsyApi::ShopShippingProfileDestinationsResultsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shipping_profile_destination_id')
        self.shipping_profile_destination_id = attributes[:'shipping_profile_destination_id']
      end

      if attributes.key?(:'shipping_profile_id')
        self.shipping_profile_id = attributes[:'shipping_profile_id']
      end

      if attributes.key?(:'origin_country_iso')
        self.origin_country_iso = attributes[:'origin_country_iso']
      end

      if attributes.key?(:'destination_country_iso')
        self.destination_country_iso = attributes[:'destination_country_iso']
      end

      if attributes.key?(:'destination_region')
        self.destination_region = attributes[:'destination_region']
      end

      if attributes.key?(:'primary_cost')
        self.primary_cost = attributes[:'primary_cost']
      end

      if attributes.key?(:'secondary_cost')
        self.secondary_cost = attributes[:'secondary_cost']
      end

      if attributes.key?(:'shipping_carrier_id')
        self.shipping_carrier_id = attributes[:'shipping_carrier_id']
      end

      if attributes.key?(:'mail_class')
        self.mail_class = attributes[:'mail_class']
      end

      if attributes.key?(:'min_delivery_days')
        self.min_delivery_days = attributes[:'min_delivery_days']
      end

      if attributes.key?(:'max_delivery_days')
        self.max_delivery_days = attributes[:'max_delivery_days']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@shipping_profile_destination_id.nil? && @shipping_profile_destination_id < 1
        invalid_properties.push('invalid value for "shipping_profile_destination_id", must be greater than or equal to 1.')
      end

      if !@shipping_profile_id.nil? && @shipping_profile_id < 1
        invalid_properties.push('invalid value for "shipping_profile_id", must be greater than or equal to 1.')
      end

      if !@min_delivery_days.nil? && @min_delivery_days > 45
        invalid_properties.push('invalid value for "min_delivery_days", must be smaller than or equal to 45.')
      end

      if !@min_delivery_days.nil? && @min_delivery_days < 1
        invalid_properties.push('invalid value for "min_delivery_days", must be greater than or equal to 1.')
      end

      if !@max_delivery_days.nil? && @max_delivery_days > 45
        invalid_properties.push('invalid value for "max_delivery_days", must be smaller than or equal to 45.')
      end

      if !@max_delivery_days.nil? && @max_delivery_days < 1
        invalid_properties.push('invalid value for "max_delivery_days", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@shipping_profile_destination_id.nil? && @shipping_profile_destination_id < 1
      return false if !@shipping_profile_id.nil? && @shipping_profile_id < 1
      destination_region_validator = EnumAttributeValidator.new('String', ["eu", "non_eu", "none"])
      return false unless destination_region_validator.valid?(@destination_region)
      return false if !@min_delivery_days.nil? && @min_delivery_days > 45
      return false if !@min_delivery_days.nil? && @min_delivery_days < 1
      return false if !@max_delivery_days.nil? && @max_delivery_days > 45
      return false if !@max_delivery_days.nil? && @max_delivery_days < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_profile_destination_id Value to be assigned
    def shipping_profile_destination_id=(shipping_profile_destination_id)
      if !shipping_profile_destination_id.nil? && shipping_profile_destination_id < 1
        fail ArgumentError, 'invalid value for "shipping_profile_destination_id", must be greater than or equal to 1.'
      end

      @shipping_profile_destination_id = shipping_profile_destination_id
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_profile_id Value to be assigned
    def shipping_profile_id=(shipping_profile_id)
      if !shipping_profile_id.nil? && shipping_profile_id < 1
        fail ArgumentError, 'invalid value for "shipping_profile_id", must be greater than or equal to 1.'
      end

      @shipping_profile_id = shipping_profile_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination_region Object to be assigned
    def destination_region=(destination_region)
      validator = EnumAttributeValidator.new('String', ["eu", "non_eu", "none"])
      unless validator.valid?(destination_region)
        fail ArgumentError, "invalid value for \"destination_region\", must be one of #{validator.allowable_values}."
      end
      @destination_region = destination_region
    end

    # Custom attribute writer method with validation
    # @param [Object] min_delivery_days Value to be assigned
    def min_delivery_days=(min_delivery_days)
      if !min_delivery_days.nil? && min_delivery_days > 45
        fail ArgumentError, 'invalid value for "min_delivery_days", must be smaller than or equal to 45.'
      end

      if !min_delivery_days.nil? && min_delivery_days < 1
        fail ArgumentError, 'invalid value for "min_delivery_days", must be greater than or equal to 1.'
      end

      @min_delivery_days = min_delivery_days
    end

    # Custom attribute writer method with validation
    # @param [Object] max_delivery_days Value to be assigned
    def max_delivery_days=(max_delivery_days)
      if !max_delivery_days.nil? && max_delivery_days > 45
        fail ArgumentError, 'invalid value for "max_delivery_days", must be smaller than or equal to 45.'
      end

      if !max_delivery_days.nil? && max_delivery_days < 1
        fail ArgumentError, 'invalid value for "max_delivery_days", must be greater than or equal to 1.'
      end

      @max_delivery_days = max_delivery_days
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shipping_profile_destination_id == o.shipping_profile_destination_id &&
          shipping_profile_id == o.shipping_profile_id &&
          origin_country_iso == o.origin_country_iso &&
          destination_country_iso == o.destination_country_iso &&
          destination_region == o.destination_region &&
          primary_cost == o.primary_cost &&
          secondary_cost == o.secondary_cost &&
          shipping_carrier_id == o.shipping_carrier_id &&
          mail_class == o.mail_class &&
          min_delivery_days == o.min_delivery_days &&
          max_delivery_days == o.max_delivery_days
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shipping_profile_destination_id, shipping_profile_id, origin_country_iso, destination_country_iso, destination_region, primary_cost, secondary_cost, shipping_carrier_id, mail_class, min_delivery_days, max_delivery_days].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = EtsyApi.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
