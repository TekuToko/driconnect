class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '~1年' },
    { id: 3, name: '2~4年' },
    { id: 4, name: '5~10年' },
    { id: 5, name: '10年~' }
  ]

  include ActiveHash::Associations
  has_many :users
end
