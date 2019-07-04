require "rest-client"
require "json"
require "pry"

Url = 'https://api.nutridigm.com/api/v1/nutridigm/healthconditions?subscriptionId=test'
class Get
  def self.get_item
#   // Takes an optional parameter of id
    item_hash = {}
    # // Make an empty object to store all the relevant data in
    item_array = RestClient.get(Url)
    item_array.each do |item|
        item
    # // Fetch the data ^^
    item_data = JSON.parse(item)
    # // Interpre the JSON
   
    item_hash
    # // Return the object
  end
end
Collapse