class Order < ApplicationRecord
	validates :date, presence: true 
end
