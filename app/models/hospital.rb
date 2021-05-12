class Hospital < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :patients
  has_many :waiting_lists
  has_many  :diseases
  validates_associated :waiting_lists
  validates :name , presence: true
end
