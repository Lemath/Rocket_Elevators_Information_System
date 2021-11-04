class Customer < ApplicationRecord
    belongs_to :address

    def create
        # @customer = current_user.posts.build(quote_params)
        @customer.user_id=current_user.id
    end

    def customer_params
        params.require(:expense).permit(:user_id, :customer_creation_date, :company_name, :company_headquarter, :company_contact, :company_email, :company_description, :service_technical_authority_name, :technical_authority_phone, :service_technical_authority_email, :address_id)

      end


end
