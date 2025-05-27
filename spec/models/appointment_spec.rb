require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # all a bit of a mess without any proper DB management using factories and all that
  # however here I would test all model methods
  # box_header, show_phone_number, completed, has_review, can_review
  # as all these should be tested.

  # before(:all) do

  # end

  # describe 'box header' do


  # it 'returns Completed when it should' do
  #   c = Coach.new(first_name: 'test', last_name: 'last', email: 'test@test.com', phone_number: '737-727-2626')
  #   c.save
  #   c.reload
  #   s = Student.new(first_name: 'test', last_name: 'last', email: 'test@test.com', phone_number: '737-727-2626')
  #   s.save
  #   s.reload
  #   start_time = (DateTime.now - 2.days).noon
  #   end_time = start_time + 2.hours
  #   a = Appointment.new(coach_id: c.id, student_id: s.id, start_time:, end_time:)
  #   a.save
  #   a.reload
  #     expect(a.box_header).to eq 'Completed'
  #   end

  # end
end
