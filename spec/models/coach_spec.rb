require 'rails_helper'

RSpec.describe Coach, type: :model do
  before(:each) do
    # Coach.destroy_all
  end
  it 'creates a coach when necessary data is present' do
    params = {first_name: 'test', last_name: 'last', email: 'test@test.com', phone_number: '849-333-2343'}
    count = Coach.all.size
    Coach.create(params)
    expect(count+1).to eq count+1
  end

  it 'does not create a coach when first name is missing' do
    params = {last_name: 'last', email: 'test@test.com', phone_number: '849-333-2343'}
    Coach.create(params)
    expect(Coach.all.size).to eq Coach.all.size
  end

    it 'does not create a coach when email name is missing' do
    params = {first_name: 'test', last_name: 'last', phone_number: '849-333-2343'}
    Coach.create(params)
    expect(Coach.all.size).to eq Coach.all.size
  end

  it 'returns full name' do
    params = {first_name: 'test', last_name: 'last', email: 'test@test.com', phone_number: '849-333-2343'}
    coach = Coach.new(params)
    coach.save
    coach.reload
    expect(coach.full_name).to eq 'test last'
  end
end
