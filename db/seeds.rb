# first step i usually add in here is to delete existing data and start clean
AppointmentReview.destroy_all
Appointment.destroy_all
Student.destroy_all
Coach.destroy_all

c = Coach.new(first_name: 'Obi-Wan', last_name: 'Kenobi', email: 'obi@wan.com', phone_number: '123-123-1234')
c.save

s1 = Student.create(first_name: 'Anakin', last_name: 'Skywalker', email: 'anakin@skyguy.com', phone_number: '321-321-4321')
s1.save
s2 = Student.create(first_name: 'Ahsoka', last_name: 'Tano', email: 'ahsoka@snips.com', phone_number: '456-456-5678')
s2.save

start_time = (DateTime.now + 1.day).noon
end_time = (DateTime.now + 1.day).beginning_of_day.change(hour: 14)
Appointment.create!(coach_id: c.id, student_id: nil, booked: false, start_time:, end_time:)

start_time = (DateTime.now - 2.days).noon
end_time = (DateTime.now - 2.days).noon + 2.hours
a1 = Appointment.new(coach_id: c.id, student_id: s1.id, booked: true, start_time:, end_time:)
a1.save

start_time = (DateTime.now - 3.days).beginning_of_day.change(hour: 9)
end_time = (DateTime.now - 3.days).beginning_of_day.change(hour: 11)
a2 = Appointment.new(coach_id: c.id, student_id: s2.id, booked: true, start_time:, end_time:)
a2.save

start_time = (DateTime.now + 1.day).noon
end_time = (DateTime.now + 1.day).noon + 2.hours
Appointment.create!(coach_id: c.id, student_id: s1.id, booked: true, start_time:, end_time:)

start_time = (DateTime.now - 1.day).noon
end_time = (DateTime.now - 1.day).noon + 2.hours
Appointment.create!(coach_id: c.id, student_id: s2.id, booked: true, start_time:, end_time:)

AppointmentReview.create!(coach_id: c.id, student_id: s1.id, appointment_id: a1.id, rating: 2, notes: 'Definitely seems like some anger issues are just bubbling below the surface')

AppointmentReview.create!(coach_id: c.id, student_id: s2.id, appointment_id: a2.id, rating: 5, notes: 'Some abandoment issues but a good head on her shoulders')