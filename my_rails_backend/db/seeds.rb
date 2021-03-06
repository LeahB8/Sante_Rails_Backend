require 'byebug'
require 'rest-client'
require "pry"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@concerns = []

 def concerns
   response_string = RestClient.get('https://api.nutridigm.com/api/v1/nutridigm/healthconditions?subscriptionId=test')
   response_array = JSON.parse(response_string)
#    binding.pry
  #  response_array.each do |key| (key["hcText"], key["problemID"])
  #  @concerns << {key["hcText"], key["problemID"]}
  #  end

  response_array.each do |concern|
    consumeStringArray = RestClient.get("https://api.nutridigm.com/api/v1/nutridigm/topitemstoconsume?subscriptionId=test&problemId=" + concern["problemID"].to_s)
    puts consumeStringArray
    consumeString = JSON.parse(consumeStringArray)
    avoidStringArray = RestClient.get("https://api.nutridigm.com/api/v1/nutridigm/topitemstoavoid?subscriptionId=test&problemId=" + concern["problemID"].to_s)
    puts avoidStringArray
    avoidString = JSON.parse(avoidStringArray)
    concern = Concern.create(problem: concern["hcText"], problemID: concern["problemID"], avoid: avoidString, consume: consumeString )
  end

  
end
concerns



## food groups 

# @concerns = []

#  def concerns
#    response_string = RestClient.get('https://api.nutridigm.com/api/v1/nutridigm/foodgroups?subscriptionId=test')
#    response_array = JSON.parse(response_string)
# #    binding.pry
#    response_array.each do |key1, key2| key1["foodGroupID"], key2["fgDescription"]
#    @concerns << key1["foodGroupID"], key2["fgDescription"]
#   end
#   @concerns.each do |concern|
#     concern = Concern.find_or_create_by(problem: concern)
#   end

  
# end
# concerns