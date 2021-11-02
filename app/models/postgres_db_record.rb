class PostgresDbRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :"postgres_db_#{Rails.env}"
end
