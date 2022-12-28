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
  # Represents a list of listing image resources, each of which contains the reference URLs and metadata for an image
  class ShopListingWithAssociationsImagesInner
    # The numeric ID for the [listing](/documentation/reference#tag/ShopListing) associated to this transaction.
    attr_accessor :listing_id

    # The numeric ID of the primary [listing image](/documentation/reference#tag/ShopListing-Image) for this transaction.
    attr_accessor :listing_image_id

    # The webhex string for the image's average color, in webhex notation.
    attr_accessor :hex_code

    # The numeric red value equal to the image's average red value, from 0-255 (RGB color).
    attr_accessor :red

    # The numeric red value equal to the image's average red value, from 0-255 (RGB color).
    attr_accessor :green

    # The numeric red value equal to the image's average red value, from 0-255 (RGB color).
    attr_accessor :blue

    # The numeric hue equal to the image's average hue, from 0-360 (HSV color).
    attr_accessor :hue

    # The numeric saturation equal to the image's average saturation, from 0-100 (HSV color).
    attr_accessor :saturation

    # The numeric brightness equal to the image's average brightness, from 0-100 (HSV color).
    attr_accessor :brightness

    # When true, the image is in black & white.
    attr_accessor :is_black_and_white

    # The listing image\\'s creation time, in epoch seconds.
    attr_accessor :creation_tsz

    # The listing image\\'s creation time, in epoch seconds.
    attr_accessor :created_timestamp

    # The positive non-zero numeric position in the images displayed in a listing, with rank 1 images appearing in the left-most position in a listing.
    attr_accessor :rank

    # The url string for a 75x75 pixel thumbnail of the image.
    attr_accessor :url_75x75

    # The url string for a 170x135 pixel thumbnail of the image.
    attr_accessor :url_170x135

    # The url string for a thumbnail of the image, no more than 570 pixels wide with variable height.
    attr_accessor :url_570x_n

    # The url string for the full-size image, up to 3000 pixels in each dimension.
    attr_accessor :url_fullxfull

    # The numeric height, measured in pixels, of the full-sized image referenced in url_fullxfull.
    attr_accessor :full_height

    # The numeric width, measured in pixels, of the full-sized image referenced in url_fullxfull.
    attr_accessor :full_width

    # Alt text for the listing image.
    attr_accessor :alt_text

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'listing_id' => :'listing_id',
        :'listing_image_id' => :'listing_image_id',
        :'hex_code' => :'hex_code',
        :'red' => :'red',
        :'green' => :'green',
        :'blue' => :'blue',
        :'hue' => :'hue',
        :'saturation' => :'saturation',
        :'brightness' => :'brightness',
        :'is_black_and_white' => :'is_black_and_white',
        :'creation_tsz' => :'creation_tsz',
        :'created_timestamp' => :'created_timestamp',
        :'rank' => :'rank',
        :'url_75x75' => :'url_75x75',
        :'url_170x135' => :'url_170x135',
        :'url_570x_n' => :'url_570xN',
        :'url_fullxfull' => :'url_fullxfull',
        :'full_height' => :'full_height',
        :'full_width' => :'full_width',
        :'alt_text' => :'alt_text'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'listing_id' => :'Integer',
        :'listing_image_id' => :'Integer',
        :'hex_code' => :'String',
        :'red' => :'Integer',
        :'green' => :'Integer',
        :'blue' => :'Integer',
        :'hue' => :'Integer',
        :'saturation' => :'Integer',
        :'brightness' => :'Integer',
        :'is_black_and_white' => :'Boolean',
        :'creation_tsz' => :'Integer',
        :'created_timestamp' => :'Integer',
        :'rank' => :'Integer',
        :'url_75x75' => :'String',
        :'url_170x135' => :'String',
        :'url_570x_n' => :'String',
        :'url_fullxfull' => :'String',
        :'full_height' => :'Integer',
        :'full_width' => :'Integer',
        :'alt_text' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'hex_code',
        :'red',
        :'green',
        :'blue',
        :'hue',
        :'saturation',
        :'brightness',
        :'is_black_and_white',
        :'full_height',
        :'full_width',
        :'alt_text'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ListingImage'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EtsyApi::ShopListingWithAssociationsImagesInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EtsyApi::ShopListingWithAssociationsImagesInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'listing_id')
        self.listing_id = attributes[:'listing_id']
      end

      if attributes.key?(:'listing_image_id')
        self.listing_image_id = attributes[:'listing_image_id']
      end

      if attributes.key?(:'hex_code')
        self.hex_code = attributes[:'hex_code']
      end

      if attributes.key?(:'red')
        self.red = attributes[:'red']
      end

      if attributes.key?(:'green')
        self.green = attributes[:'green']
      end

      if attributes.key?(:'blue')
        self.blue = attributes[:'blue']
      end

      if attributes.key?(:'hue')
        self.hue = attributes[:'hue']
      end

      if attributes.key?(:'saturation')
        self.saturation = attributes[:'saturation']
      end

      if attributes.key?(:'brightness')
        self.brightness = attributes[:'brightness']
      end

      if attributes.key?(:'is_black_and_white')
        self.is_black_and_white = attributes[:'is_black_and_white']
      end

      if attributes.key?(:'creation_tsz')
        self.creation_tsz = attributes[:'creation_tsz']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'rank')
        self.rank = attributes[:'rank']
      end

      if attributes.key?(:'url_75x75')
        self.url_75x75 = attributes[:'url_75x75']
      end

      if attributes.key?(:'url_170x135')
        self.url_170x135 = attributes[:'url_170x135']
      end

      if attributes.key?(:'url_570x_n')
        self.url_570x_n = attributes[:'url_570x_n']
      end

      if attributes.key?(:'url_fullxfull')
        self.url_fullxfull = attributes[:'url_fullxfull']
      end

      if attributes.key?(:'full_height')
        self.full_height = attributes[:'full_height']
      end

      if attributes.key?(:'full_width')
        self.full_width = attributes[:'full_width']
      end

      if attributes.key?(:'alt_text')
        self.alt_text = attributes[:'alt_text']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@listing_id.nil? && @listing_id < 1
        invalid_properties.push('invalid value for "listing_id", must be greater than or equal to 1.')
      end

      if !@listing_image_id.nil? && @listing_image_id < 1
        invalid_properties.push('invalid value for "listing_image_id", must be greater than or equal to 1.')
      end

      if !@red.nil? && @red < 0
        invalid_properties.push('invalid value for "red", must be greater than or equal to 0.')
      end

      if !@green.nil? && @green < 0
        invalid_properties.push('invalid value for "green", must be greater than or equal to 0.')
      end

      if !@blue.nil? && @blue < 0
        invalid_properties.push('invalid value for "blue", must be greater than or equal to 0.')
      end

      if !@hue.nil? && @hue < 0
        invalid_properties.push('invalid value for "hue", must be greater than or equal to 0.')
      end

      if !@saturation.nil? && @saturation < 0
        invalid_properties.push('invalid value for "saturation", must be greater than or equal to 0.')
      end

      if !@brightness.nil? && @brightness < 0
        invalid_properties.push('invalid value for "brightness", must be greater than or equal to 0.')
      end

      if !@creation_tsz.nil? && @creation_tsz < 0
        invalid_properties.push('invalid value for "creation_tsz", must be greater than or equal to 0.')
      end

      if !@created_timestamp.nil? && @created_timestamp < 0
        invalid_properties.push('invalid value for "created_timestamp", must be greater than or equal to 0.')
      end

      if !@rank.nil? && @rank < 0
        invalid_properties.push('invalid value for "rank", must be greater than or equal to 0.')
      end

      if !@full_height.nil? && @full_height < 0
        invalid_properties.push('invalid value for "full_height", must be greater than or equal to 0.')
      end

      if !@full_width.nil? && @full_width < 0
        invalid_properties.push('invalid value for "full_width", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@listing_id.nil? && @listing_id < 1
      return false if !@listing_image_id.nil? && @listing_image_id < 1
      return false if !@red.nil? && @red < 0
      return false if !@green.nil? && @green < 0
      return false if !@blue.nil? && @blue < 0
      return false if !@hue.nil? && @hue < 0
      return false if !@saturation.nil? && @saturation < 0
      return false if !@brightness.nil? && @brightness < 0
      return false if !@creation_tsz.nil? && @creation_tsz < 0
      return false if !@created_timestamp.nil? && @created_timestamp < 0
      return false if !@rank.nil? && @rank < 0
      return false if !@full_height.nil? && @full_height < 0
      return false if !@full_width.nil? && @full_width < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] listing_id Value to be assigned
    def listing_id=(listing_id)
      if !listing_id.nil? && listing_id < 1
        fail ArgumentError, 'invalid value for "listing_id", must be greater than or equal to 1.'
      end

      @listing_id = listing_id
    end

    # Custom attribute writer method with validation
    # @param [Object] listing_image_id Value to be assigned
    def listing_image_id=(listing_image_id)
      if !listing_image_id.nil? && listing_image_id < 1
        fail ArgumentError, 'invalid value for "listing_image_id", must be greater than or equal to 1.'
      end

      @listing_image_id = listing_image_id
    end

    # Custom attribute writer method with validation
    # @param [Object] red Value to be assigned
    def red=(red)
      if !red.nil? && red < 0
        fail ArgumentError, 'invalid value for "red", must be greater than or equal to 0.'
      end

      @red = red
    end

    # Custom attribute writer method with validation
    # @param [Object] green Value to be assigned
    def green=(green)
      if !green.nil? && green < 0
        fail ArgumentError, 'invalid value for "green", must be greater than or equal to 0.'
      end

      @green = green
    end

    # Custom attribute writer method with validation
    # @param [Object] blue Value to be assigned
    def blue=(blue)
      if !blue.nil? && blue < 0
        fail ArgumentError, 'invalid value for "blue", must be greater than or equal to 0.'
      end

      @blue = blue
    end

    # Custom attribute writer method with validation
    # @param [Object] hue Value to be assigned
    def hue=(hue)
      if !hue.nil? && hue < 0
        fail ArgumentError, 'invalid value for "hue", must be greater than or equal to 0.'
      end

      @hue = hue
    end

    # Custom attribute writer method with validation
    # @param [Object] saturation Value to be assigned
    def saturation=(saturation)
      if !saturation.nil? && saturation < 0
        fail ArgumentError, 'invalid value for "saturation", must be greater than or equal to 0.'
      end

      @saturation = saturation
    end

    # Custom attribute writer method with validation
    # @param [Object] brightness Value to be assigned
    def brightness=(brightness)
      if !brightness.nil? && brightness < 0
        fail ArgumentError, 'invalid value for "brightness", must be greater than or equal to 0.'
      end

      @brightness = brightness
    end

    # Custom attribute writer method with validation
    # @param [Object] creation_tsz Value to be assigned
    def creation_tsz=(creation_tsz)
      if !creation_tsz.nil? && creation_tsz < 0
        fail ArgumentError, 'invalid value for "creation_tsz", must be greater than or equal to 0.'
      end

      @creation_tsz = creation_tsz
    end

    # Custom attribute writer method with validation
    # @param [Object] created_timestamp Value to be assigned
    def created_timestamp=(created_timestamp)
      if !created_timestamp.nil? && created_timestamp < 0
        fail ArgumentError, 'invalid value for "created_timestamp", must be greater than or equal to 0.'
      end

      @created_timestamp = created_timestamp
    end

    # Custom attribute writer method with validation
    # @param [Object] rank Value to be assigned
    def rank=(rank)
      if !rank.nil? && rank < 0
        fail ArgumentError, 'invalid value for "rank", must be greater than or equal to 0.'
      end

      @rank = rank
    end

    # Custom attribute writer method with validation
    # @param [Object] full_height Value to be assigned
    def full_height=(full_height)
      if !full_height.nil? && full_height < 0
        fail ArgumentError, 'invalid value for "full_height", must be greater than or equal to 0.'
      end

      @full_height = full_height
    end

    # Custom attribute writer method with validation
    # @param [Object] full_width Value to be assigned
    def full_width=(full_width)
      if !full_width.nil? && full_width < 0
        fail ArgumentError, 'invalid value for "full_width", must be greater than or equal to 0.'
      end

      @full_width = full_width
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          listing_id == o.listing_id &&
          listing_image_id == o.listing_image_id &&
          hex_code == o.hex_code &&
          red == o.red &&
          green == o.green &&
          blue == o.blue &&
          hue == o.hue &&
          saturation == o.saturation &&
          brightness == o.brightness &&
          is_black_and_white == o.is_black_and_white &&
          creation_tsz == o.creation_tsz &&
          created_timestamp == o.created_timestamp &&
          rank == o.rank &&
          url_75x75 == o.url_75x75 &&
          url_170x135 == o.url_170x135 &&
          url_570x_n == o.url_570x_n &&
          url_fullxfull == o.url_fullxfull &&
          full_height == o.full_height &&
          full_width == o.full_width &&
          alt_text == o.alt_text
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [listing_id, listing_image_id, hex_code, red, green, blue, hue, saturation, brightness, is_black_and_white, creation_tsz, created_timestamp, rank, url_75x75, url_170x135, url_570x_n, url_fullxfull, full_height, full_width, alt_text].hash
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
