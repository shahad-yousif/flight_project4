class Airport < ActiveRecord::Base
     has_many :flights, class_name: "Flight", foreign_key: "from_airport_id"
     has_many :flights, class_name: "Flight", foreign_key: "to_airport_id"
    
     def full_airport_name
        "#{city} #{code}"
     end
end
