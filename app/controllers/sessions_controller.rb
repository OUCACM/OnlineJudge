class SessionsController < ApplicationController

  def login
    #store_location request.referrer if request.referrer.present?
    store_location
  end

  def create
    @login = params[:login].strip
    @user = if login.include?('@')
             User.where(:email => /^#{Regexp.escape @login}$/i).first
           else
             User.where(:name => @login.downcase).first
           end
    puts @user.name

    if @user and @user.password == params[:password]
      login_as @user
      remember_me if params[:remember_me]

      render :json=> { success: true }
    end
    #redirect_to root_url
  end

  def logout
    logout_user
    redirect_to root_url
  end

end
