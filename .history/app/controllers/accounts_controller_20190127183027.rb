class AccountsController < ApplicationController
    def index
        @accounts = Account.all
    end

    def new
        @account = Account.new
    end

    def create
        @account = Account.create(account_params)
        redirect_to accounts_path
    end

    def edit
        @account = Account.find(params[:id])
    end

    def update
        @account = Account.find(params[:id])
        @account.update(account_params)
        redirect_to account_params
    end

    private
        def account_params
            params.require(:account).permit(:date, :place, :price)
        end
end
