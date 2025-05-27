require 'rails_helper'

RSpec.describe Student, type: :model do
  before(:each) do
    # Student.destroy_all
  end
  it 'creates a student when necessary data is present' do
    params = {first_name: 'test', last_name: 'last', email: 'test@test.com', phone_number: '849-333-2343'}
    count = Student.all.size
    Student.create(params)
    expect(count+1).to eq count+1
  end

  it 'does not create a student when first name is missing' do
    params = {last_name: 'last', email: 'test@test.com', phone_number: '849-333-2343'}
    Student.create(params)
    expect(Student.all.size).to eq Student.all.size
  end

    it 'does not create a student when email name is missing' do
    params = {first_name: 'test', last_name: 'last', phone_number: '849-333-2343'}
    Student.create(params)
    expect(Student.all.size).to eq Student.all.size
  end

  it 'returns full name' do
    params = {first_name: 'test', last_name: 'last', email: 'test@test.com', phone_number: '849-333-2343'}
    student = Student.new(params)
    student.save
    student.reload
    expect(student.full_name).to eq 'test last'
  end
end
