class AdminsController < ApplicationController
  respond_to :json

  before_action :find_admin, only: [:show, :update, :destroy]


  def index
    @admins = Admin.all
    render json: @admins
  end

  def show
    respond_with @admin
  end

  def find_admin
    @admin = Admin.find(params[:id])
  end

  def cat_params
    params.require(:admin).permit!
  end
end
