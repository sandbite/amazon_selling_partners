# frozen_string_literal: true

require_relative './address_deserializer'

module AmazonSellingPartners
  class Order
    class SearcherDeserializer < LedgerSync::Deserializer
      attribute :amazon_order_id, hash_attribute: 'AmazonOrderId'
      attribute :seller_order_id, hash_attribute: 'SellerOrderId'
      attribute :latest_delivery_date, hash_attribute: 'LatestDeliveryDate'
      attribute :purchase_date, hash_attribute: 'PurchaseDate'
      attribute :order_status, hash_attribute: 'OrderStatus'
      attribute :shipped_items_count, hash_attribute: 'NumberOfItemsShipped'
      attribute :unshipped_items_count, hash_attribute: 'NumberOfItemsUnshipped'
      attribute :order_total_amount, hash_attribute: 'OrderTotal.Amount'
      attribute :order_total_currency, hash_attribute: 'OrderTotal.CurrencyCode'

      references_one :shipping_address,
                     hash_attribute: 'ShippingAddress',
                     deserializer: AmazonSellingPartners::Order::AddressDeserializer
    end
  end
end
