class Instrument < ActiveRecord::Base
  self.inheritance_column = nil

  belongs_to :bank
  belongs_to :user

  validates_presence_of :type
  validates_presence_of :size
  validates_numericality_of :age, greater_than: 0
  validates :borrower_first_name, format: { with: /\A[a-z]+\z/i }
  validates :borrower_last_name, format: { with: /\A[a-z]+\z/i }
  validates :borrower_email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }
  validates :size, format: { with: /\A\d{1}\/\d{1,2}\z/ }
  validates :type, format: { with: /\A[a-z]+( [a-z]+)?\z/i }
end
