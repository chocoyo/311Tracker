class Neighbourhood < ApplicationRecord
  has_many :calls
  belongs_to :wards
end
