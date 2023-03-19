class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex
  belongs_to :prefecture
  belongs_to :car_size
  belongs_to :driver_history
  has_many :monologs

  validates :nickname, presence: true
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: '6文字以上、かつ半角英数を両方含む必要があります' }
  validates :birthday, presence: true
  validates :sex_id, numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }
  validates :car_size_id, numericality: { other_than: 1 }
  validates :driver_history_id, numericality: { other_than: 1 }
end
