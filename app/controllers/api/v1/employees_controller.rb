module Api
  module V1
    # Employees Controller
    class EmployeesController < ApplicationController
      before_action :set_employee, only: [:show, :update, :destroy]

      # GET /employees
      def index
        @employees = Employee.all

        render json: @employees, each_serializer: EmployeesSerializer
      end

      # GET /employees/1
      def show
        render json: @employee, each_serializer: EmployeesSerializer
      end

      # POST /employees
      def create
        @employee = Employee.new(employee_params)

        if @employee.save
          render json: @employee, status: :created, each_serializer: EmployeesSerializer
        else
          render json: @employee.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /employees/1
      def update
        if @employee.update(employee_params)
          render json: @employee
        else
          render json: @employee.errors, status: :unprocessable_entity
        end
      end

      # DELETE /employees/1
      def destroy
        @employee.destroy
      end

      def search
        keyword = params[:keyword].downcase
        employees_result = SearchEmployee.new(keyword).call
        render json: employees_result, each_serializer: EmployeesSerializer
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_employee
        @employee = Employee.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :role_id, :birthdate, :admission_date, :salary)
      end
    end
  end
end
