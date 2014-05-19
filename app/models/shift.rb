class Shift
  include Mongoid::Document
  field :shift, type: String
  field :dow, type: Integer
  filed :time, type: Integer
 
end