class Student < ApplicationRecord
  validates :first_name, :last_name, presence: :true
  validates :email, :phone_number, presence: :true, uniqueness: true
end
