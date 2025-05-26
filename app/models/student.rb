class Student < ApplicationRecord
  has_many :appointments
  has_many :appointment_reviews

  validates :first_name, :last_name, presence: :true
  validates :email, :phone_number, presence: :true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
