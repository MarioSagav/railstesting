class Order < ApplicationRecord
	validates :date, presence: true
  belongs_to :customer, optional: true
  has_one :evaluation
  belongs_to :truck, optional: true
end
