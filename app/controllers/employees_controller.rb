class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        id = params[:id]
        @employee = Employee.find(id)
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        first_name = params["employee"]["first_name"]
        last_name = params["employee"]["last_name"]
        alias_e = params["employee"]["alias"]
        office = params["employee"]["office"]
        title = params["employee"]["title"]
        dog = params["employee"]["dog"]
        img_url = params["employee"]["img_url"]
        employee = Employee.create(first_name: first_name, last_name: last_name, alias: alias_e, office: office, title: title, dog_id: dog, img_url: img_url)
        redirect_to employee_path(employee)

        
    end
end
