class AccountsController < ApplicationController
    def index
        @account = Account.new
    end

    def create
        @account = Account.create(account_params)
        link_to '/accounts/check'
    end

    private
        def account_params
            params.require(:account).permit(:date, :place, :price)
        end
end
