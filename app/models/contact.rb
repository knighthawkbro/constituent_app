class Contact < ApplicationRecord
  has_many :calls
  has_many :constituents, through: :calls
end
