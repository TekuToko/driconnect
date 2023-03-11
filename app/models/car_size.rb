class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: "---" },
    { id: 2, name: "~2t" },
    { id: 3, name: "4t" },
    { id: 4, name: "8t" },
    { id: 5, name: "10t" },
    { id: 6, name: "特殊車両" },
    { id: 7, name: "その他" }
  ]

  include ActiveHash::Associations
  has_many :users
  
end