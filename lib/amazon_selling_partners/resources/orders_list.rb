# frozen_string_literal: true

require_relative '../types/iso_date'
require_relative '../types/array'

module AmazonSellingPartners
  class OrdersList < AmazonSellingPartners::Resource
    attribute :last_updated_after, type: AmazonSellingPartners::Type::IsoDate
    attribute :next_token, type: LedgerSync::Type::String
    attribute :order_statuses, type: AmazonSellingPartners::Type::Array
    attribute :marketplace_ids, type: AmazonSellingPartners::Type::Array
  end
end
