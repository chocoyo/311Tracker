class Call < ApplicationRecord
  belongs_to :service_area
  belongs_to :service_request
  belongs_to :ward
  belongs_to :neighbourhood
end
