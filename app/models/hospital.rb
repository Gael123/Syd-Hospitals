class Hospital < ApplicationRecord
  has_many :patients
  has_many :waitingList
  has_many :diseases
end
