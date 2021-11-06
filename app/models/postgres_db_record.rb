class PostgresDbRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :"SamaelTessier"
end
