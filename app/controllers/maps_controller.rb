class MapsController < ApplicationController
    def index
        @building_list = []
        Building.all.each do |building|
            @building_list.push(building)
        end
        @building_list
    end
    def test
       
    end
    def show
    end

end