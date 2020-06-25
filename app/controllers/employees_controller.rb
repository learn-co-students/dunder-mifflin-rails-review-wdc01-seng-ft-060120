class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        id = params[:id]
        @employee = Employee.find(id)
    end

    def new
        @employee = Employee.new()
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employees_path	
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employees_path
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :img_url, :dog_id)
    end
end
