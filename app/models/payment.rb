class Payment < ApplicationRecord
  belongs_to :user
  has_many :payment_line_items
end
