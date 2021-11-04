class FactContact < PostgresDbRecord
  def getContactsData
    contacts = Leads.where({ created_at: (Time.now - 1.day)..Time.now })
    
    contacts.each do |contact|
      fact = FactContact.find_or_create_by(ContactId: contact.id)
      fact.Craation_Date = contact.created_at
      fact.Company_Name = contact.company_name
      fact.Email = contact.email
      fact.Project_Name = contact.project_name
      fact.save
      end
    end
  end
end
