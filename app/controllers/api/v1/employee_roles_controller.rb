module Api
  module V1
    class EmployeeRolesController < ApplicationController
      before_action :set_employee_role, only: [:show, :update, :destroy]
    
      # GET /employee_roles
      def index
        @employee_roles = EmployeeRole.all
    
        render json: @employee_roles
      end
    
      # GET /employee_roles/1
      def show
        render json: @employee_role
      end
    
      # POST /employee_roles
      def create
        @employee_role = EmployeeRole.new(employee_role_params)
    
        if @employee_role.save
          render json: @employee_role, status: :created, location: @employee_role
        else
          render json: @employee_role.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /employee_roles/1
      def update
        if @employee_role.update(employee_role_params)
          render json: @employee_role
        else
          render json: @employee_role.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /employee_roles/1
      def destroy
        @employee_role.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_employee_role
          @employee_role = EmployeeRole.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def employee_role_params
          params.fetch(:employee_role, {})
        end
    end    
  end
end