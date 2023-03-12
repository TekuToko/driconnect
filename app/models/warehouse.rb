class Warehouse < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :w_stock_type
  belongs_to :prefecture

  validates :w_name, presence: true
  validates :w_address, presence: true
  validates :prefecture_id, numericality: { other_than: 1 }
end
