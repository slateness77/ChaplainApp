class Employee
	require 'bcrypt'
  include Mongoid::Document
  field :name, type: String
  field :phone, type: String
  field :station, type: String
  field :birth_year, type: String
  field :email, type: String
  field :password_digest, type: String

  has_many :employee_availabilities

# First the objects
  def available_days
    EmployeeAvailability.where(employee_id: id).map do |ea|
      ea.available_day
    end
  end

  # Show all related ingredient IDs
  def available_day_ids
    available_days.map(&:id)
  end

  #Add and remove ingredients as necessary
  def available_day_ids=(vals)
    my_ea = EmployeeAvailability.where(employee_id: self.id).map(&:employee_id)
    vals.each do |s|
      next if s.blank?
      s_id = BSON::ObjectId.from_string(s)
      if my_ea.include?(s_id)
        my_ea.delete(s_id)
      else
        EmployeeAvailability.create(employee_id: self.id, employee_id: s_id)
      end
    end
    my_bi.each do |r|
      EmployeeAvailability.find_by(employee_id: self.id, employee_id: r).destroy
    end
  end

  def password
    @password
  end

  def password=(new_password)
    @password = new_password
    self.password_digest = BCrypt::Password.create(new_password)
  end

  def authenticate(test_password)
    if BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end

end

