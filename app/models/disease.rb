class Disease < ApplicationRecord
  has_many :hospitals
  has_many :patients
  validates :name, presence: true
  validates :description, presence:true
  # validates_associated :patients
end
