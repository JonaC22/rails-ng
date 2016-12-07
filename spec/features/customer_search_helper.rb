require 'rails_helper'

feature "Customer Search" do
	def create_customer(first_name: nil,
		last_name: nil,
		email: nil)
	first_name ||= Faker::Name.first_name
	last_name ||= Faker::Name.last_name
	email ||= "#{Faker::Internet.user_name}#{rand(1000)}@" + "#{Faker::Internet.domain_name}"
	Customer.create!(
		first_name: first_name,
		last_name: last_name,
		username: "#{Faker::Internet.user_name}#{rand(1000)}",
		email: email
	)
end