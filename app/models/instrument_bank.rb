class InstrumentBank < ActiveRecord::Base
  has_many :instruments
  belongs_to :user
end
