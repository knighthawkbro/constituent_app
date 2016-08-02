class Constituent < ApplicationRecord
  has_many :calls
  has_many :contacts, through: :calls
  has_many :notes
end
