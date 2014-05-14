class Station
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :phone_number, type: String
end
