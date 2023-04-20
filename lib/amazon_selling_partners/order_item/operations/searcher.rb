# frozen_string_literal: true

module AmazonSellingPartners
  class OrderItem
    class Operation
      class Searcher < AmazonSellingPartners::Operation::Searcher
        private

        def request_method
          :get
        end

        def url
          "/orders/v0/orders/#{resource.amazon_order_id}/orderItems?NextToken=#{resource.next_token}"
        end

        def opts
          {
            body: nil,
            form_params: {},
            query_params: {}
          }
        end
      end
    end
  end
end