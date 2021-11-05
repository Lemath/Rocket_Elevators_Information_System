require "faker"

# 1.times do 
#     leads = Lead.new(
#         full_name_contact:Faker::Name.name ,
#         company_name:Faker::Company.name,
#         email:Faker::Internet.email,
#         phone:Faker::PhoneNumber.phone_number,
#         project_name:Faker::Company.buzzword ,
#         project_description:Faker::Lorem.paragraph,
#         department:["Marketing","Webdesign","Architecture"].sample,
#         message:Faker::Lorem.paragraph,
#         request_date:Faker::Date.between(from: 3.years.ago, to: Date.today)
#     )
#     leads.save
# end

number_and_street = Array["2415 Ch Ste-Foy","110 Grande Allée O","255 Av. Brock S","2250 Rue Guy"]
suite_or_appartment = Array["2","4","6","12"]
city = Array["Quebec","Quebec","Montreal","Montreal"]
postal_code = Array["G1V 1T1","G1R 2G8","H4X 0A3","H3H 2M3"]

for i in 0...number_and_street.length()
    addresses = Address.new(
        type_of_address:["Home","Business","Billing","Shipping","Contact"].sample,
        status:["Verified","Partially","Unverified","Ambiguous","Conflict","Reverted"].sample,
        entity:["Customer","Lead","Building"].sample,
        country:"Canada",
        number_and_street:number_and_street[i],
        suite_or_appartment:suite_or_appartment[i],
        city:city[i],
        postal_code:postal_code[i],
        notes:Faker::Lorem.paragraph
        )
    addresses.save
end

# def new
#     @user = User.new
    
# end

1.times do
    customers = Customer.new(
        user_id:users.id,
        customer_creation_date:Faker::Date.between(from: 3.years.ago, to: Date.today),
        company_name:Faker::Company.name,
        company_contact:Faker::Name.name,
        company_email:Faker::Internet.email,
        company_description:Faker::Lorem.paragraph,
        service_technical_authority_name:Faker::Name.name,
        technical_authority_phone:Faker::PhoneNumber.phone_number,
        service_technical_authority_email:Faker::Internet.email,
        address_id: addresses.id
        )
    
    customers.save
end

1.times do
    buildings = Building.new(
        address_building:addresses.id,
        name_administrator_building:Faker::Name.name,
        email_administrator_building:Faker::Internet.email,
        phone_administrator_building:Faker::PhoneNumber.phone_number,
        name_technical_building:Faker::Name.name,
        email_technical_building:Faker::Internet.email,
        phone_technical_building:Faker::PhoneNumber.phone_number,
        customer_id: customers.id
        )
    buildings.save
end


1.times do 
    building_details = BuildingDetail.new(
        information_key: "Contruction Year", 
        value: Faker::Number.between(from: 1980, to: 2020) ,
        building_id: buildings.id
        )
    building_details.save
end 

1.times do
    columns = Column.new(
        # batteryid: batteries.id,
        type_of_building: ["Residential", "Commercial", "Corporate", "Hybrid"].sample ,
        number_of_floors_served: Faker::Number.between(from: 5, to: 100),
        status:["Online","Online","Online","Online","Online","Online","Online","Online","Online","Offline"].sample ,
        information:Faker::Lorem.sentence ,
        notes:Faker::Lorem.paragraph  ,
        )
    columns.save
end

1.times do
    users = User.create!( 
        email:Faker::Internet.email,
        password:Faker::Alphanumeric.alphanumeric(number: 6),
        remember_created_at:Faker::Date.between(from: 3.years.ago, to: Date.today),
    )
    users.save
end

# first_name = Array["Nicolas","Nadya","Martin","Mathieu","Patrick" ,"David","Mathieu","Thomas","Serge","Francis","Mathieu","David","Nicolas","David","Remi","Timothy","Kiril","Emmanuela","Abdul","Krista","Jonathan"]
# last_name = Array["Genest","Fortier","Chantal","Houde","Thibault","Boutin","Lortie","Carrier","Savoie","Patry-Jessop","Lefrancois","Larochelle","Pineault","Amyot","Gagnon","Wever","Kleinerman","Derilus","Akeeb","Sheely","Murray"]
# title = Array["CEO","Director","Assistant Director" ,"Captain","Captain","Engineer","Engineer","Engineer","Enigneer","Engineer","Engineer","Engineer","Engineer","Engineer","Engineer","Developer","Developer","Developer","Developer","Developer","Developer"]
# email = Array["nicolas.genest@codeboxx.biz","nadya.fortier@codeboxx.biz","martin.chantal@codeboxx.biz","mathieu.houde@codeboxx.biz","patrick.thibault@codeboxx.biz","david.boutin@codeboxx.biz","mathieu.lortie@codeboxx.biz","thomas.carrier@codeboxx.biz","serge.savoie@codeboxx.biz","francis.patry-jessop@codeboxx.biz","mathieu.lefrancois@codeboxx.biz","david.larochelle@codeboxx.biz","nicolas.pineault@codeboxx.biz","david.amyot@codeboxx.biz","remi.gagnon@codeboxx.biz","timothy.wever@codeboxx.biz","kiril.kleinerman@codeboxx.biz","emmanuela.derilus@codeboxx.biz","abdul.akeeb@codebozz.biz","krista.sheely@codeboxx.biz","jonathan.murray@codeboxx.biz"]

# for i in 0...first_name.length()
#     Employee.create(first_name:first_name[i], last_name:last_name[i], title:title[i], email:email[i])
# end



