class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        id = params[:id]
        @employee = Employee.find(id)
    end

    def new
    end

    def create
        @employee = Employee.new(employee_params)
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :img_url, :dog)
    end
end
