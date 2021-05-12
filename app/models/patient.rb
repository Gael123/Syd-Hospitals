class Patient < ApplicationRecord
  belongs_to :disease
  belongs_to :waiting_list
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  # validates :name, presence: true
  # validates :age, presence: true,:numericality => { :only_integer => true }
  # validates :address, presence: true

end
