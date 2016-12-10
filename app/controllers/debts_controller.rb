class DebtsController < ApplicationController
def index
    @debts = Debt.all
end

def show
    @debt = Debt.find(params[:id])

    p = @debt.principal
    r = @debt.interest/12
    n = @debt.time
    b = @debt.balance
    # @a = p * (((r(1+r))**n)/(((1+r)**n)-1))



end

def new
    @debt = Debt.new
end

def create
    @debt = Debt.new(debt_params) 
    @debt.save
    redirect_to @debt
    @user_id = 1
end

def edit
    @debt = Debt.find(params[:id])
end

def update
    @debt = Debt.find(params[:id])
    @debt.update(debt_params)
    redirect_to @debt
end

def delete
end

private

def debt_params
    params.require(:debt).permit(:name, :balance, :principal, :time, :user_id, :interest)
end

end