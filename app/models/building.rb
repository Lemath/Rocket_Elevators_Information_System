class Building < ApplicationRecord
    belongs_to :customer

    def building_params
        params.require(:expense).permit(:address_building, :name_administrator_building, :email_administrator_building, :phone_administrator_building, :name_technical_building, :email_technical_building, :phone_technical_building, :service_technical_authority_name, :technical_authority_phone, :service_technical_authority_email, :customer_id)
      end
end
