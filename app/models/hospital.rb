class Hospital < ApplicationRecord
  has_many :patients, dependent: :destroy
  has_many :waiting_lists, dependent: :destroy
  has_many  :diseases
  validates_associated :waiting_lists
  validates :name , presence: true
end
