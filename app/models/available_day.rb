class AvailableDay
  include Mongoid::Document
  field :dow, type: String
  field :shift, type: String

  has_many :employee_availabilities
  def to_s
  	dow + " " + shift
  end
end
