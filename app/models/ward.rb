class Ward < ApplicationRecord
  has_many :calls
  has_many :neighbourhoods
end
