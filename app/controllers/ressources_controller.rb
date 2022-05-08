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
    @ressource = Ressource.new(ressource_params)
    @ressource.user = current_user
    @ressource.save 
    redirect_to ressources_path(@ressource)

  end

  private 

  def ressource_params 
    params.require(:ressource).permit(:title, :content)
  end 

end
