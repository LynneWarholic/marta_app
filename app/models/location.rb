class Location < ActiveRecord::Base

  geocoded_by :my_location
  after_validation :geocode

# Here, behind the scenes we will combine the address and city

def my_location
  "#{address}, #{city}, GA"
end

end
