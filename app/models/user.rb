class User < ActiveRecord::Base
  has_one :bank
  has_many :instruments,
    through: :bank

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :first_name, format: { with: /\A[a-z]+\z/i }
  validates :last_name, format: { with: /\A[a-z]+\z/i }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
