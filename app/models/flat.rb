class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_is_address?
end
