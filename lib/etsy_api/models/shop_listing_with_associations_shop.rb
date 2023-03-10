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
  # A shop created by an Etsy user.
  class ShopListingWithAssociationsShop
    # The unique positive non-zero numeric ID for an Etsy Shop.
    attr_accessor :shop_id

    # The numeric user ID of the [user](/documentation/reference#tag/User) who owns this shop.
    attr_accessor :user_id

    # The shop's name string.
    attr_accessor :shop_name

    # The date and time this shop was created, in epoch seconds.
    attr_accessor :create_date

    # The date and time this shop was created, in epoch seconds.
    attr_accessor :created_timestamp

    # A brief heading string for the shop\\'s main page.
    attr_accessor :title

    # An announcement string to buyers that displays on the shop's homepage.
    attr_accessor :announcement

    # The ISO (alphabetic) code for the shop's currency. The shop displays all prices in this currency by default.
    attr_accessor :currency_code

    # When true, this shop is not accepting purchases.
    attr_accessor :is_vacation

    # The shop's message string displayed when `is_vacation` is true.
    attr_accessor :vacation_message

    # A message string sent to users who complete a purchase from this shop.
    attr_accessor :sale_message

    # A message string sent to users who purchase a digital item from this shop.
    attr_accessor :digital_sale_message

    # The date and time of the last update to the shop, in epoch seconds.
    attr_accessor :update_date

    # The date and time of the last update to the shop, in epoch seconds.
    attr_accessor :updated_timestamp

    # The number of active listings in the shop.
    attr_accessor :listing_active_count

    # The number of digital listings in the shop.
    attr_accessor :digital_listing_count

    # The shop owner\\'s login name string.
    attr_accessor :login_name

    # When true, the shop accepts customization requests.
    attr_accessor :accepts_custom_requests

    # The shop's policy welcome string (may be blank).
    attr_accessor :policy_welcome

    # The shop's payment policy string (may be blank).
    attr_accessor :policy_payment

    # The shop's shipping policy string (may be blank).
    attr_accessor :policy_shipping

    # The shop's refund policy string (may be blank).
    attr_accessor :policy_refunds

    # The shop's additional policies string (may be blank).
    attr_accessor :policy_additional

    # The shop's seller information string (may be blank).
    attr_accessor :policy_seller_info

    # The date and time of the last update to the shop's policies, in epoch seconds.
    attr_accessor :policy_update_date

    # When true, EU receipts display private info.
    attr_accessor :policy_has_private_receipt_info

    # When true, the shop displays additional unstructured policy fields.
    attr_accessor :has_unstructured_policies

    # The shop's privacy policy string (may be blank).
    attr_accessor :policy_privacy

    # The shop's automatic reply string displayed in new conversations when `is_vacation` is true.
    attr_accessor :vacation_autoreply

    # The URL string for this shop.
    attr_accessor :url

    # The URL string for this shop's banner image.
    attr_accessor :image_url_760x100

    # The number of users who marked this shop a favorite.
    attr_accessor :num_favorers

    # A list of language strings for the shop's enrolled languages.
    attr_accessor :languages

    # The URL string for this shop's icon image.
    attr_accessor :icon_url_fullxfull

    # When true, the shop accepted using structured policies.
    attr_accessor :is_using_structured_policies

    # When true, the shop accepted OR declined after viewing structured policies onboarding.
    attr_accessor :has_onboarded_structured_policies

    # When true, this shop\\'s policies include a link to an EU online dispute form.
    attr_accessor :include_dispute_form_link

    # (**DEPRECATED: Replaced by _is_etsy_payments_onboarded_.) When true, the shop has onboarded onto Etsy Payments.
    attr_accessor :is_direct_checkout_onboarded

    # When true, the shop has onboarded onto Etsy Payments.
    attr_accessor :is_etsy_payments_onboarded

    # When true, the shop is eligible for calculated shipping profiles. (Only available in the US and Canada)
    attr_accessor :is_calculated_eligible

    # When true, the shop opted in to buyer promise.
    attr_accessor :is_opted_in_to_buyer_promise

    # When true, the shop is based in the US.
    attr_accessor :is_shop_us_based

    # The total number of sales ([transactions](/documentation/reference#tag/Shop-Receipt-Transactions)) for this shop.
    attr_accessor :transaction_sold_count

    # The country iso the shop is shipping from.
    attr_accessor :shipping_from_country_iso

    # The country iso where the shop is located.
    attr_accessor :shop_location_country_iso

    # Number of reviews of shop listings in the past year.
    attr_accessor :review_count

    # Average rating based on reviews of shop listings in the past year.
    attr_accessor :review_average

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'shop_id' => :'shop_id',
        :'user_id' => :'user_id',
        :'shop_name' => :'shop_name',
        :'create_date' => :'create_date',
        :'created_timestamp' => :'created_timestamp',
        :'title' => :'title',
        :'announcement' => :'announcement',
        :'currency_code' => :'currency_code',
        :'is_vacation' => :'is_vacation',
        :'vacation_message' => :'vacation_message',
        :'sale_message' => :'sale_message',
        :'digital_sale_message' => :'digital_sale_message',
        :'update_date' => :'update_date',
        :'updated_timestamp' => :'updated_timestamp',
        :'listing_active_count' => :'listing_active_count',
        :'digital_listing_count' => :'digital_listing_count',
        :'login_name' => :'login_name',
        :'accepts_custom_requests' => :'accepts_custom_requests',
        :'policy_welcome' => :'policy_welcome',
        :'policy_payment' => :'policy_payment',
        :'policy_shipping' => :'policy_shipping',
        :'policy_refunds' => :'policy_refunds',
        :'policy_additional' => :'policy_additional',
        :'policy_seller_info' => :'policy_seller_info',
        :'policy_update_date' => :'policy_update_date',
        :'policy_has_private_receipt_info' => :'policy_has_private_receipt_info',
        :'has_unstructured_policies' => :'has_unstructured_policies',
        :'policy_privacy' => :'policy_privacy',
        :'vacation_autoreply' => :'vacation_autoreply',
        :'url' => :'url',
        :'image_url_760x100' => :'image_url_760x100',
        :'num_favorers' => :'num_favorers',
        :'languages' => :'languages',
        :'icon_url_fullxfull' => :'icon_url_fullxfull',
        :'is_using_structured_policies' => :'is_using_structured_policies',
        :'has_onboarded_structured_policies' => :'has_onboarded_structured_policies',
        :'include_dispute_form_link' => :'include_dispute_form_link',
        :'is_direct_checkout_onboarded' => :'is_direct_checkout_onboarded',
        :'is_etsy_payments_onboarded' => :'is_etsy_payments_onboarded',
        :'is_calculated_eligible' => :'is_calculated_eligible',
        :'is_opted_in_to_buyer_promise' => :'is_opted_in_to_buyer_promise',
        :'is_shop_us_based' => :'is_shop_us_based',
        :'transaction_sold_count' => :'transaction_sold_count',
        :'shipping_from_country_iso' => :'shipping_from_country_iso',
        :'shop_location_country_iso' => :'shop_location_country_iso',
        :'review_count' => :'review_count',
        :'review_average' => :'review_average'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shop_id' => :'Integer',
        :'user_id' => :'Integer',
        :'shop_name' => :'String',
        :'create_date' => :'Integer',
        :'created_timestamp' => :'Integer',
        :'title' => :'String',
        :'announcement' => :'String',
        :'currency_code' => :'String',
        :'is_vacation' => :'Boolean',
        :'vacation_message' => :'String',
        :'sale_message' => :'String',
        :'digital_sale_message' => :'String',
        :'update_date' => :'Integer',
        :'updated_timestamp' => :'Integer',
        :'listing_active_count' => :'Integer',
        :'digital_listing_count' => :'Integer',
        :'login_name' => :'String',
        :'accepts_custom_requests' => :'Boolean',
        :'policy_welcome' => :'String',
        :'policy_payment' => :'String',
        :'policy_shipping' => :'String',
        :'policy_refunds' => :'String',
        :'policy_additional' => :'String',
        :'policy_seller_info' => :'String',
        :'policy_update_date' => :'Integer',
        :'policy_has_private_receipt_info' => :'Boolean',
        :'has_unstructured_policies' => :'Boolean',
        :'policy_privacy' => :'String',
        :'vacation_autoreply' => :'String',
        :'url' => :'String',
        :'image_url_760x100' => :'String',
        :'num_favorers' => :'Integer',
        :'languages' => :'Array<String>',
        :'icon_url_fullxfull' => :'String',
        :'is_using_structured_policies' => :'Boolean',
        :'has_onboarded_structured_policies' => :'Boolean',
        :'include_dispute_form_link' => :'Boolean',
        :'is_direct_checkout_onboarded' => :'Boolean',
        :'is_etsy_payments_onboarded' => :'Boolean',
        :'is_calculated_eligible' => :'Boolean',
        :'is_opted_in_to_buyer_promise' => :'Boolean',
        :'is_shop_us_based' => :'Boolean',
        :'transaction_sold_count' => :'Integer',
        :'shipping_from_country_iso' => :'String',
        :'shop_location_country_iso' => :'String',
        :'review_count' => :'Integer',
        :'review_average' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
        :'announcement',
        :'vacation_message',
        :'sale_message',
        :'digital_sale_message',
        :'policy_welcome',
        :'policy_payment',
        :'policy_shipping',
        :'policy_refunds',
        :'policy_additional',
        :'policy_seller_info',
        :'policy_privacy',
        :'vacation_autoreply',
        :'image_url_760x100',
        :'icon_url_fullxfull',
        :'shipping_from_country_iso',
        :'shop_location_country_iso',
        :'review_count',
        :'review_average'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Shop'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EtsyApi::ShopListingWithAssociationsShop` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EtsyApi::ShopListingWithAssociationsShop`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'shop_name')
        self.shop_name = attributes[:'shop_name']
      end

      if attributes.key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'announcement')
        self.announcement = attributes[:'announcement']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'is_vacation')
        self.is_vacation = attributes[:'is_vacation']
      end

      if attributes.key?(:'vacation_message')
        self.vacation_message = attributes[:'vacation_message']
      end

      if attributes.key?(:'sale_message')
        self.sale_message = attributes[:'sale_message']
      end

      if attributes.key?(:'digital_sale_message')
        self.digital_sale_message = attributes[:'digital_sale_message']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'updated_timestamp')
        self.updated_timestamp = attributes[:'updated_timestamp']
      end

      if attributes.key?(:'listing_active_count')
        self.listing_active_count = attributes[:'listing_active_count']
      end

      if attributes.key?(:'digital_listing_count')
        self.digital_listing_count = attributes[:'digital_listing_count']
      end

      if attributes.key?(:'login_name')
        self.login_name = attributes[:'login_name']
      end

      if attributes.key?(:'accepts_custom_requests')
        self.accepts_custom_requests = attributes[:'accepts_custom_requests']
      end

      if attributes.key?(:'policy_welcome')
        self.policy_welcome = attributes[:'policy_welcome']
      end

      if attributes.key?(:'policy_payment')
        self.policy_payment = attributes[:'policy_payment']
      end

      if attributes.key?(:'policy_shipping')
        self.policy_shipping = attributes[:'policy_shipping']
      end

      if attributes.key?(:'policy_refunds')
        self.policy_refunds = attributes[:'policy_refunds']
      end

      if attributes.key?(:'policy_additional')
        self.policy_additional = attributes[:'policy_additional']
      end

      if attributes.key?(:'policy_seller_info')
        self.policy_seller_info = attributes[:'policy_seller_info']
      end

      if attributes.key?(:'policy_update_date')
        self.policy_update_date = attributes[:'policy_update_date']
      end

      if attributes.key?(:'policy_has_private_receipt_info')
        self.policy_has_private_receipt_info = attributes[:'policy_has_private_receipt_info']
      end

      if attributes.key?(:'has_unstructured_policies')
        self.has_unstructured_policies = attributes[:'has_unstructured_policies']
      end

      if attributes.key?(:'policy_privacy')
        self.policy_privacy = attributes[:'policy_privacy']
      end

      if attributes.key?(:'vacation_autoreply')
        self.vacation_autoreply = attributes[:'vacation_autoreply']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'image_url_760x100')
        self.image_url_760x100 = attributes[:'image_url_760x100']
      end

      if attributes.key?(:'num_favorers')
        self.num_favorers = attributes[:'num_favorers']
      end

      if attributes.key?(:'languages')
        if (value = attributes[:'languages']).is_a?(Array)
          self.languages = value
        end
      end

      if attributes.key?(:'icon_url_fullxfull')
        self.icon_url_fullxfull = attributes[:'icon_url_fullxfull']
      end

      if attributes.key?(:'is_using_structured_policies')
        self.is_using_structured_policies = attributes[:'is_using_structured_policies']
      end

      if attributes.key?(:'has_onboarded_structured_policies')
        self.has_onboarded_structured_policies = attributes[:'has_onboarded_structured_policies']
      end

      if attributes.key?(:'include_dispute_form_link')
        self.include_dispute_form_link = attributes[:'include_dispute_form_link']
      end

      if attributes.key?(:'is_direct_checkout_onboarded')
        self.is_direct_checkout_onboarded = attributes[:'is_direct_checkout_onboarded']
      end

      if attributes.key?(:'is_etsy_payments_onboarded')
        self.is_etsy_payments_onboarded = attributes[:'is_etsy_payments_onboarded']
      end

      if attributes.key?(:'is_calculated_eligible')
        self.is_calculated_eligible = attributes[:'is_calculated_eligible']
      end

      if attributes.key?(:'is_opted_in_to_buyer_promise')
        self.is_opted_in_to_buyer_promise = attributes[:'is_opted_in_to_buyer_promise']
      end

      if attributes.key?(:'is_shop_us_based')
        self.is_shop_us_based = attributes[:'is_shop_us_based']
      end

      if attributes.key?(:'transaction_sold_count')
        self.transaction_sold_count = attributes[:'transaction_sold_count']
      end

      if attributes.key?(:'shipping_from_country_iso')
        self.shipping_from_country_iso = attributes[:'shipping_from_country_iso']
      end

      if attributes.key?(:'shop_location_country_iso')
        self.shop_location_country_iso = attributes[:'shop_location_country_iso']
      end

      if attributes.key?(:'review_count')
        self.review_count = attributes[:'review_count']
      end

      if attributes.key?(:'review_average')
        self.review_average = attributes[:'review_average']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@shop_id.nil? && @shop_id < 1
        invalid_properties.push('invalid value for "shop_id", must be greater than or equal to 1.')
      end

      if !@user_id.nil? && @user_id < 1
        invalid_properties.push('invalid value for "user_id", must be greater than or equal to 1.')
      end

      if !@create_date.nil? && @create_date < 0
        invalid_properties.push('invalid value for "create_date", must be greater than or equal to 0.')
      end

      if !@created_timestamp.nil? && @created_timestamp < 0
        invalid_properties.push('invalid value for "created_timestamp", must be greater than or equal to 0.')
      end

      if !@update_date.nil? && @update_date < 0
        invalid_properties.push('invalid value for "update_date", must be greater than or equal to 0.')
      end

      if !@updated_timestamp.nil? && @updated_timestamp < 0
        invalid_properties.push('invalid value for "updated_timestamp", must be greater than or equal to 0.')
      end

      if !@listing_active_count.nil? && @listing_active_count < 0
        invalid_properties.push('invalid value for "listing_active_count", must be greater than or equal to 0.')
      end

      if !@digital_listing_count.nil? && @digital_listing_count < 0
        invalid_properties.push('invalid value for "digital_listing_count", must be greater than or equal to 0.')
      end

      if !@policy_update_date.nil? && @policy_update_date < 0
        invalid_properties.push('invalid value for "policy_update_date", must be greater than or equal to 0.')
      end

      if !@num_favorers.nil? && @num_favorers < 0
        invalid_properties.push('invalid value for "num_favorers", must be greater than or equal to 0.')
      end

      if !@transaction_sold_count.nil? && @transaction_sold_count < 0
        invalid_properties.push('invalid value for "transaction_sold_count", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@shop_id.nil? && @shop_id < 1
      return false if !@user_id.nil? && @user_id < 1
      return false if !@create_date.nil? && @create_date < 0
      return false if !@created_timestamp.nil? && @created_timestamp < 0
      return false if !@update_date.nil? && @update_date < 0
      return false if !@updated_timestamp.nil? && @updated_timestamp < 0
      return false if !@listing_active_count.nil? && @listing_active_count < 0
      return false if !@digital_listing_count.nil? && @digital_listing_count < 0
      return false if !@policy_update_date.nil? && @policy_update_date < 0
      return false if !@num_favorers.nil? && @num_favorers < 0
      return false if !@transaction_sold_count.nil? && @transaction_sold_count < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] shop_id Value to be assigned
    def shop_id=(shop_id)
      if !shop_id.nil? && shop_id < 1
        fail ArgumentError, 'invalid value for "shop_id", must be greater than or equal to 1.'
      end

      @shop_id = shop_id
    end

    # Custom attribute writer method with validation
    # @param [Object] user_id Value to be assigned
    def user_id=(user_id)
      if !user_id.nil? && user_id < 1
        fail ArgumentError, 'invalid value for "user_id", must be greater than or equal to 1.'
      end

      @user_id = user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] create_date Value to be assigned
    def create_date=(create_date)
      if !create_date.nil? && create_date < 0
        fail ArgumentError, 'invalid value for "create_date", must be greater than or equal to 0.'
      end

      @create_date = create_date
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
    # @param [Object] update_date Value to be assigned
    def update_date=(update_date)
      if !update_date.nil? && update_date < 0
        fail ArgumentError, 'invalid value for "update_date", must be greater than or equal to 0.'
      end

      @update_date = update_date
    end

    # Custom attribute writer method with validation
    # @param [Object] updated_timestamp Value to be assigned
    def updated_timestamp=(updated_timestamp)
      if !updated_timestamp.nil? && updated_timestamp < 0
        fail ArgumentError, 'invalid value for "updated_timestamp", must be greater than or equal to 0.'
      end

      @updated_timestamp = updated_timestamp
    end

    # Custom attribute writer method with validation
    # @param [Object] listing_active_count Value to be assigned
    def listing_active_count=(listing_active_count)
      if !listing_active_count.nil? && listing_active_count < 0
        fail ArgumentError, 'invalid value for "listing_active_count", must be greater than or equal to 0.'
      end

      @listing_active_count = listing_active_count
    end

    # Custom attribute writer method with validation
    # @param [Object] digital_listing_count Value to be assigned
    def digital_listing_count=(digital_listing_count)
      if !digital_listing_count.nil? && digital_listing_count < 0
        fail ArgumentError, 'invalid value for "digital_listing_count", must be greater than or equal to 0.'
      end

      @digital_listing_count = digital_listing_count
    end

    # Custom attribute writer method with validation
    # @param [Object] policy_update_date Value to be assigned
    def policy_update_date=(policy_update_date)
      if !policy_update_date.nil? && policy_update_date < 0
        fail ArgumentError, 'invalid value for "policy_update_date", must be greater than or equal to 0.'
      end

      @policy_update_date = policy_update_date
    end

    # Custom attribute writer method with validation
    # @param [Object] num_favorers Value to be assigned
    def num_favorers=(num_favorers)
      if !num_favorers.nil? && num_favorers < 0
        fail ArgumentError, 'invalid value for "num_favorers", must be greater than or equal to 0.'
      end

      @num_favorers = num_favorers
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_sold_count Value to be assigned
    def transaction_sold_count=(transaction_sold_count)
      if !transaction_sold_count.nil? && transaction_sold_count < 0
        fail ArgumentError, 'invalid value for "transaction_sold_count", must be greater than or equal to 0.'
      end

      @transaction_sold_count = transaction_sold_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shop_id == o.shop_id &&
          user_id == o.user_id &&
          shop_name == o.shop_name &&
          create_date == o.create_date &&
          created_timestamp == o.created_timestamp &&
          title == o.title &&
          announcement == o.announcement &&
          currency_code == o.currency_code &&
          is_vacation == o.is_vacation &&
          vacation_message == o.vacation_message &&
          sale_message == o.sale_message &&
          digital_sale_message == o.digital_sale_message &&
          update_date == o.update_date &&
          updated_timestamp == o.updated_timestamp &&
          listing_active_count == o.listing_active_count &&
          digital_listing_count == o.digital_listing_count &&
          login_name == o.login_name &&
          accepts_custom_requests == o.accepts_custom_requests &&
          policy_welcome == o.policy_welcome &&
          policy_payment == o.policy_payment &&
          policy_shipping == o.policy_shipping &&
          policy_refunds == o.policy_refunds &&
          policy_additional == o.policy_additional &&
          policy_seller_info == o.policy_seller_info &&
          policy_update_date == o.policy_update_date &&
          policy_has_private_receipt_info == o.policy_has_private_receipt_info &&
          has_unstructured_policies == o.has_unstructured_policies &&
          policy_privacy == o.policy_privacy &&
          vacation_autoreply == o.vacation_autoreply &&
          url == o.url &&
          image_url_760x100 == o.image_url_760x100 &&
          num_favorers == o.num_favorers &&
          languages == o.languages &&
          icon_url_fullxfull == o.icon_url_fullxfull &&
          is_using_structured_policies == o.is_using_structured_policies &&
          has_onboarded_structured_policies == o.has_onboarded_structured_policies &&
          include_dispute_form_link == o.include_dispute_form_link &&
          is_direct_checkout_onboarded == o.is_direct_checkout_onboarded &&
          is_etsy_payments_onboarded == o.is_etsy_payments_onboarded &&
          is_calculated_eligible == o.is_calculated_eligible &&
          is_opted_in_to_buyer_promise == o.is_opted_in_to_buyer_promise &&
          is_shop_us_based == o.is_shop_us_based &&
          transaction_sold_count == o.transaction_sold_count &&
          shipping_from_country_iso == o.shipping_from_country_iso &&
          shop_location_country_iso == o.shop_location_country_iso &&
          review_count == o.review_count &&
          review_average == o.review_average
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shop_id, user_id, shop_name, create_date, created_timestamp, title, announcement, currency_code, is_vacation, vacation_message, sale_message, digital_sale_message, update_date, updated_timestamp, listing_active_count, digital_listing_count, login_name, accepts_custom_requests, policy_welcome, policy_payment, policy_shipping, policy_refunds, policy_additional, policy_seller_info, policy_update_date, policy_has_private_receipt_info, has_unstructured_policies, policy_privacy, vacation_autoreply, url, image_url_760x100, num_favorers, languages, icon_url_fullxfull, is_using_structured_policies, has_onboarded_structured_policies, include_dispute_form_link, is_direct_checkout_onboarded, is_etsy_payments_onboarded, is_calculated_eligible, is_opted_in_to_buyer_promise, is_shop_us_based, transaction_sold_count, shipping_from_country_iso, shop_location_country_iso, review_count, review_average].hash
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
