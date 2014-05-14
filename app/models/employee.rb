class Employee
  include Mongoid::Document
  field :name, type: String
  field :phone, type: String
  field :station, type: String
  field :birth_year, type: String
  field :email, type: String

  has_many :employee_availabilities
end

