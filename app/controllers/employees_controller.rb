class EmployeesController < ApplicationController

    def index 
        @employees = Employee.all
    end 

    def show 
        @employee = Employee.find(params[:id])
    end 

    def new
        @employee = Employee.new
    end

    def create
        # byebug
        @employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url))
        @employee.save
        redirect_to employee_path(@employee)
    end

    def edit
       
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(first_name: params[:employee][:first_name],
                         last_name: params[:employee][:last_name],
                          alias: params[:employee][:alias],
                          title: params[:employee][:title],
                          office: params[:employee][:office],
                          dog_id: params[:employee][:dog_id],
                          img_url: params[:employee][:img_url] )
        redirect_to employee_path(@employee.id)

    end
end
