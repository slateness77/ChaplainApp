class EmployeeAvailability
  include Mongoid::Document
  field :station, type: String
  belongs_to :employee
  belongs_to :available_day
end
