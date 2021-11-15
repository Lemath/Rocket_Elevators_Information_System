class Battery < ApplicationRecord
    belongs_to :building
    has_many :columns
    has_one :employee
    after_initialize do
        if new_record?
          self.created_at ||= DateTime.now
        end
    end
end
