class WStockType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '食品（常温）' },
    { id: 3, name: '食品（低温）' },
    { id: 4, name: '医薬品' },
    { id: 5, name: '工業製品' },
    { id: 6, name: '化学薬品' },
    { id: 7, name: '雑貨' },
    { id: 8, name: '衣料品' },
    { id: 9, name: '危険品' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :warehouses
end
