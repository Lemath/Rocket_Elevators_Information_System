class FactQuote < PostgresDbRecord

  def self.getQuotesData
    quotes = Quote.where({ created_at: (Time.now - 10.minute)..Time.now })
    quotes.each do |quote|
      fact = FactQuote.find_or_create_by(QuoteId: quote.id)
      fact.Creation_Date = quote.created_at
      fact.Company_Name = quote.user.company_name
      fact.Email = quote.user.email
      fact.NbElevator = quote.amount_of_elevator
      fact.save
    end
  end
end
