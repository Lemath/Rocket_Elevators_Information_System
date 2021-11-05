class DimCustomer < PostgresDbRecord
  def self.buildDimention(customer_id)
    customer = Customer.find(customer_id)
    dimension = DimCustomer.find_or_create_by(Company_Name: customer.company_name)
    dimension.Creation_Date = customer.created_at
    dimension.Contact_Full_Name = customer.company_contact
    dimension.Contact_Email = customer.company_email
    dimension.NbElevator = customer.#
    dimension.Customer_City = customer.address.city
    dimension.save
  end
end
