class Customer < ApplicationRecord
  has_many :orders
  has_many :evaluation
end
