class MapsController < ApplicationController
    def index
        
        @location =[]
        @floors =[]
        @names=[]
        @nb_batteries= []
        @nb_elevators = []
        @tech_name = []

        Building.all.each do |building|
        f=0
        x=0
        y=0
        z=0
        building.address.all.each do |building|

            @location.push(address.number_and_street)
            
            @names.push(building.customer.company_contact)
            @tech_name.push(building.name_technical_building)
            x = x + building.batteries.count
                building.batteries.all.each do |battery|
                    y = y + battery.columns.count
                    @nb_batteries.push(y)
                    battery.columns.all.each do |column|
                        f = f + column.number_of_floors_served
                        z = z + column.elevators.count
                        @floors.push(f + y + f)
                        @nb_elevators.push(f + y + z)
                    end
                end
            end
        end
        @location 
        @floors 
        @names
        @nb_batteries
        @nb_elevators 
        @tech_name
    end

    def test
       
    end
    def show
    end

end