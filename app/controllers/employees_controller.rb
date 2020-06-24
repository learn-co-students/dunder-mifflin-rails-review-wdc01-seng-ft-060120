class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show,:edit,:update]
    def index
        @employees = Employee.all
    end

    def show
    end

    def create
        # byebug
        new_employee = Employee.create(employee_params)
        redirect_to employee_path(new_employee)        
    end

    def new
        @employee = Employee.new
    end
    
    def edit
    end
    
    def update
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url,:dog_id)
    end

    def find_employee
        @employee = Employee.find(params[:id])
    end

end
