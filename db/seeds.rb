# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'byebug'

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
Symptom.destroy_all
Illness.destroy_all
# byebug

# PATIENT SEED
patient_1 = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_2 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_3 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_4 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_5 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_6 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_7 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_8 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_9 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
patient_10 = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), height: Faker::Demographic.height(:imperial), weight: Faker::Number.rand(30..120), relationship_status: Faker::Boolean.boolean, employment_status: Faker::Boolean.boolean, address: Faker::Address.full_address, contact_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)

# DOCTOR SEED
doctor_1 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_2 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_3 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_4 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_5 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_6 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_7 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_8 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_9 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))
doctor_10 = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, contact_number: Faker::PhoneNumber.phone_number, password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false))

# SYMPTOM
sym_1 = Symptom.create(name: "Vertiginous",description: "Throwing up last few days.")
sym_2 = Symptom.create(name: "Lung disease",description: "Out of breath.")
sym_3 = Symptom.create(name: "Osteoporosis",description: "Pain in knee.")
sym_4 = Symptom.create(name: "Neurological",description: "Persistant headache.")
sym_5 = Symptom.create(name: "Potential emergency",description: "Coughing up blood.")
sym_6 = Symptom.create(name: "Lethargy",description: "Chronic triedness")
sym_7 = Symptom.create(name: "Eczema",description: "Constant itching")
sym_8 = Symptom.create(name: "GoldDigger",description: "Broken hearts")
sym_9 = Symptom.create(name: "'Allergies'",description: "Red eyes",)
sym_10 = Symptom.create(name: "Spinal injury",description: "Broken neck",)

# ILLNESS
Illness.create!(patient_id: patient_1.id, symptom_id: sym_1.id)
Illness.create(patient: patient_2, symptom: sym_2)
Illness.create(patient: patient_3, symptom: sym_3)
Illness.create(patient: patient_4, symptom: sym_4)
Illness.create(patient: patient_5, symptom: sym_5)
Illness.create(patient: patient_6, symptom: sym_6)
Illness.create(patient: patient_7, symptom: sym_7)
Illness.create(patient: patient_8, symptom: sym_8)
Illness.create(patient: patient_9, symptom: sym_9)
Illness.create(patient: patient_10, symptom: sym_10)

# APPOINTMENT SEED
Appointment.create(doctor_id: doctor_1.id, patient_id: patient_1.id, day: "Monday", time: "10.00")
Appointment.create(doctor_id: doctor_2.id, patient_id: patient_2.id, day: "Monday", time: "15.00")
Appointment.create(doctor_id: doctor_3.id, patient_id: patient_3.id, day: "Tuesday", time: "09.00")
Appointment.create(doctor_id: doctor_4.id, patient_id: patient_4.id, day: "Wednesday", time: "12.00")
Appointment.create(doctor_id: doctor_5.id, patient_id: patient_5.id, day: "Wednesday", time: "13.00")
Appointment.create(doctor_id: doctor_6.id, patient_id: patient_6.id, day: "Wednesday", time: "16.00")
Appointment.create(doctor_id: doctor_7.id, patient_id: patient_7.id, day: "Thursday", time: "12.00")
Appointment.create(doctor_id: doctor_8.id, patient_id: patient_8.id, day: "Thursday", time: "14.00")
Appointment.create(doctor_id: doctor_9.id, patient_id: patient_9.id, day: "Friday", time: "09.00")
Appointment.create(doctor_id: doctor_10.id, patient_id: patient_10.id, day: "Saturday", time: "15.00")
Appointment.create(day: "Monday", time: "09.00")
Appointment.create(day: "Monday", time: "11.00")
Appointment.create(day: "Monday", time: "12.00")
Appointment.create(day: "Monday", time: "13.00")
Appointment.create(day: "Monday", time: "14.00")
Appointment.create(day: "Monday", time: "16.00")
Appointment.create(day: "Monday", time: "17.00")
Appointment.create(day: "Tuesday", time: "10.00")
Appointment.create(day: "Tuesday", time: "11.00")
Appointment.create(day: "Tuesday", time: "12.00")
Appointment.create(day: "Tuesday", time: "13.00")
Appointment.create(day: "Tuesday", time: "14.00")
Appointment.create(day: "Tuesday", time: "15.00")
Appointment.create(day: "Tuesday", time: "16.00")
Appointment.create(day: "Tuesday", time: "17.00")
Appointment.create(day: "Wednesday", time: "09.00")
Appointment.create(day: "Wednesday", time: "10.00")
Appointment.create(day: "Wednesday", time: "11.00")
Appointment.create(day: "Wednesday", time: "14.00")
Appointment.create(day: "Wednesday", time: "15.00")
Appointment.create(day: "Wednesday", time: "17.00")
Appointment.create(day: "Thursday", time: "09.00")
Appointment.create(day: "Thursday", time: "10.00")
Appointment.create(day: "Thursday", time: "11.00")
Appointment.create(day: "Thursday", time: "13.00")
Appointment.create(day: "Thursday", time: "15.00")
Appointment.create(day: "Thursday", time: "16.00")
Appointment.create(day: "Thursday", time: "17.00")
Appointment.create(day: "Friday", time: "10.00")
Appointment.create(day: "Friday", time: "11.00")
Appointment.create(day: "Friday", time: "12.00")
Appointment.create(day: "Friday", time: "13.00")
Appointment.create(day: "Friday", time: "14.00")
Appointment.create(day: "Friday", time: "15.00")
Appointment.create(day: "Friday", time: "16.00")
Appointment.create(day: "Friday", time: "17.00")
Appointment.create(day: "Saturday", time: "09.00")
Appointment.create(day: "Saturday", time: "10.00")
Appointment.create(day: "Saturday", time: "11.00")
Appointment.create(day: "Saturday", time: "12.00")
Appointment.create(day: "Saturday", time: "13.00")
Appointment.create(day: "Saturday", time: "14.00")
Appointment.create(day: "Saturday", time: "16.00")
Appointment.create(day: "Saturday", time: "17.00")
