class RessourcesController < ApplicationController

  def index
    @ressources = Ressource.all
  end

  def show 
    @ressource = Ressource.find(params[:id])
  end



  def new
    @ressource = Ressource.new
  end 

  def create
    @ressources = Ressource.new(ressource_params)
    @ressources.save 
    redirect_to ressource_path(@ressources)

  end

  private 

  def ressource_params 
    params.require(:ressource).permit(:title, :content)
  end 

end
