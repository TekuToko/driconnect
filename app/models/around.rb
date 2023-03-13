class Around < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :a_name, presence: true
  validates :a_address, presence: true
  validates :prefecture_id, numericality: { other_than: 1 }
end
