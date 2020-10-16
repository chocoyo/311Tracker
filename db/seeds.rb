require "csv"

puts "Deleting Current Data"
Call.destroy_all
Neighbourhood.destroy_all
ServiceArea.destroy_all
ServiceRequest.destroy_all
Ward.destroy_all

puts "Parsing File"
file = Rails.root.join("db/311_Service_Request.csv")
data = File.read(file)
calls = CSV.parse(data, headers: true, encoding: "iso-8859-1")

i = 0
puts "Populating Database"
calls.each do |call|
  ward = Ward.find_or_create_by(name: call["Ward"])
  Call.create(
    service_area:    ServiceArea.find_or_create_by(name: call["Service Area"]),
    service_request: ServiceRequest.find_or_create_by(name: call["Service Request"]),
    ward:            ward,
    neighbourhood:   Neighbourhood.find_or_create_by(name: call["Neighbourhood"], ward: ward)
  )
  i += 1
  break if i == 200
end

puts "Seed Compeleted"
