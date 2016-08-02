class Contact < ApplicationRecord
  has_many :calls
  has_many :constituents, through: :calls

  accepts_nested_attributes_for :calls
end
