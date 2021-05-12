class WaitingList < ApplicationRecord
  belongs_to :hospital, dependent: :destroy
  has_many :patients
  validates :number_of_patients, presence: true
  validates :waiting_time, presence: true
  validates :avg_processing_time, presence: true
end
