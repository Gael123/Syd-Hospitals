class Disease < ApplicationRecord
  has_many :hospitals
  has_many :patients
end
