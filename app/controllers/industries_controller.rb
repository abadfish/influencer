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

  private

  def industry_params
    params.require(:industry).permit(:name)
  end
end
