class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :support]


  def home
  end 

  def about
    @users = User.all
    @admin_users = @users.where(admin: true)
  end 

  def contact
  end

  def support 
  end

end
