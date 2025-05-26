class Student < ApplicationRecord
  has_many :appointments

  validates :first_name, :last_name, presence: :true
  validates :email, :phone_number, presence: :true, uniqueness: true
end
