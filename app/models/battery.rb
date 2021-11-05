class Battery < ApplicationRecord
    belongs_to :building
    belongs_to :employee
    after_initialize do
        if new_record?
          self.Creation_Date ||= DateTime.now
        end
    end
end
