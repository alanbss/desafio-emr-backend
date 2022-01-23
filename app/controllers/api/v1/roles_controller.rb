module Api
  module V1
    # controller for roles
    class RolesController < ApplicationController
      before_action :set_role, only: [:show, :update, :destroy]

      # GET /roles
      def index
        @roles = Role.all

        render json: @roles, status: :ok
      end

      # GET /roles/1
      def show
        render json: @role, status: :ok
      end

      # POST /roles
      def create
        @role = Role.new(role_params)

        if @role.save
          render json: @role, status: :created
        else
          render json: @role.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /roles/1
      def update
        if @role.update(role_params)
          render json: @role
        else
          render json: @role.errors, status: :unprocessable_entity
        end
      end

      # DELETE /roles/1
      def destroy
        @role.destroy
      end

      def search
        keyword = params[:keyword].downcase
        roles_result = SearchRole.new(keyword).call
        render json: roles_result, status: :ok
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_role
        @role = Role.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def role_params
        params.require(:role).permit(:name, :description, :activities)
      end
    end
  end
end
