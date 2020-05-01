class InformationsController < ApplicationController
  def index
  	@informations = Information.all
  end

  def new
  	@information = Information.new
  end

  def create
  	@information = Information.new(information_params)
  	@information.save
  	redirect_to informations_path
  end

  def show
  	@information = Information.find(params[:id])
  end

  def edit
  	@information = Information.find(params[:id])
  end

  def update
  	@information = Information.find(params[:id])
  	@information.update
  	redirect_to informations_path
  end


  private
  def information_params
  	params.permit(:title, :viewer_type, :content)
  end
end
