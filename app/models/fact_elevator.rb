class FactElevator < PostgresDbRecord

  def self.getElevatorsData
    elevators = Elevators.where({ created_at: (Time.now -5.day)..Time.now })

    elevators.each do |elevator|
      fact = FactElevator.find_or_create_by(SerialNumber: elevator.serial_number)
      fact.Date_of_Commissioning = elevator.date_of_commissioning
      fact.BuildingId = elevator.building_id#
      fact.CustomerId = elevator.customer_id#
      fact.Building_City = elevator.building_city#
      fact.save
    end
  end
end
