class IndustriesController < ApplicationController

  def index
    @industries = Industry.all
  end

  def new
    @industry = Industry.new
  end

  def create
    @industry = Industry.create(industry_params)
  end

  def show
    @industry = Industry.find(params[:format])
    @mentors = User.where(industry: @industry, role: 1)
  end

  private

  def industry_params
    params.require(:industry).permit(:name)
  end
end
