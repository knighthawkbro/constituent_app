class Call < ApplicationRecord
  belongs_to :constituent
  belongs_to :contact
end
