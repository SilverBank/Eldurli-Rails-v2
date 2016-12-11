class DebtsController < ApplicationController
def index
    @debts = Debt.all
end

def show
   


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