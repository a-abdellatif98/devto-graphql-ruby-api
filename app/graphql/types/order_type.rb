# frozen_string_literal: true

module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :description, String
    field :total, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :payments, [Types::PaymentType], null: false
    field :payments_count, Integer, null: false
    field :successful_payments, [Types::PaymentType], null: false

    def payments_count
      object.payments.size  
    end

    def successful_payments
      object.payments.successful
  end

  end
end
