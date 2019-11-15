# frozen_string_literal: true

class CustomersDataRequestJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)
    webhook.to_json

    shop.with_shopify_session do
      # Requested these orders: webhook.orders_requested
      # For this customer: webhook.customer{"id": 1234, "email": "derek@ablesense.com", "phone": null}
    end
  end
end