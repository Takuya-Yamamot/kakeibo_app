class AccountsController < ApplicationController
    def index
        @account = Account.all
    end

    def new
        @account = Account.new
    end

    def create
        @account = Account.create(account_params)
        redirect_to accounts_path
    end

    private
        def account_params
            params.require(:account).permit(:date, :place, :price)
        end
end
