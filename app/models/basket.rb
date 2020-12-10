class Basket < ApplicationRecord
  has_many :line_items, ->{order(:created_at)}
  belongs_to :user, optional:true
end
