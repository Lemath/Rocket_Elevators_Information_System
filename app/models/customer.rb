class Customer < ApplicationRecord

    def create
        # @customer = current_user.posts.build(quote_params)
        @customer.user_id=current_user.id
    end


end
