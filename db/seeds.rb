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
  Call.create(
    service_area:    ServiceArea.find_or_create_by(service_area: call["Service Area"]),
    service_request: ServiceRequest.find_or_create_by(service_request: call["Service Request"]),
    ward:            Ward.find_or_create_by(ward: call["Ward"]),
    neighbourhood:   Neighbourhood.find_or_create_by(neighbourhood: call["Neighbourhood"])
  )
  i += 1
  if i == 200
    break
  end
end

puts "Seed Compeleted"
