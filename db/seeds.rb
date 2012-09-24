# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.create(:name => "Programming & IT")
SubCategory.create(:category => category, :name => "Web Development")
SubCategory.create(:category => category, :name => "Software Development")
SubCategory.create(:category => category, :name => "Mobile Development")
SubCategory.create(:category => category, :name => "QA")
SubCategory.create(:category => category, :name => "Project Management")
SubCategory.create(:category => category, :name => "Network and System")
SubCategory.create(:category => category, :name => "Administration")
SubCategory.create(:category => category, :name => "Other")

category = Category.create(:name => "Design & Multimedia")
SubCategory.create(:category => category, :name => "UI Design")
SubCategory.create(:category => category, :name => "Graphics & Illustration")
SubCategory.create(:category => category, :name => "Animation")
SubCategory.create(:category => category, :name => "Other")
SubCategory.create(:category => category, :name => "Other")

category = Category.create(:name => "Writing & Translation")
SubCategory.create(:category => category, :name => "Articles")
SubCategory.create(:category => category, :name => "Blogs")
SubCategory.create(:category => category, :name => "Copywriting")
SubCategory.create(:category => category, :name => "Technincal Writing")
SubCategory.create(:category => category, :name => "Translations")
SubCategory.create(:category => category, :name => "Other")

category = Category.create(:name => "Admin & Support")
SubCategory.create(:category => category, :name => "Virtual Assistant")
SubCategory.create(:category => category, :name => "Data Entry")
SubCategory.create(:category => category, :name => "Accounting")
SubCategory.create(:category => category, :name => "Legal")
SubCategory.create(:category => category, :name => "Customer Service")
SubCategory.create(:category => category, :name => "Technical Support")
SubCategory.create(:category => category, :name => "Other")


