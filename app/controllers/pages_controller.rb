class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :support]


  def home
  end 

  def about
  end 

  def contact
  end

  def support 
  end

end
