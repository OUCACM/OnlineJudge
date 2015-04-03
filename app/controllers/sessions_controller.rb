class SessionsController < ApplicationController


  def login
    store_location request.referrer if request.referrer.present?
  end

  def create
    @login = params[:login].strip
    @user = if login.include?('@')
             User.where(:email => /^#{Regexp.escape @login}$/i).first
           else
             User.where(:name => @login.downcase).first
           end

    if @user and @user.password == params[:password]
      login_as @user
      remember_me if params[:remember_me]
    end
    redirect_to root_path
  end

  def logout
    logout_user
    redirect_to root_url
  end

end
