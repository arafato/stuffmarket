class LoginController < ApplicationController

  before_filter :authorize, :except => [:login, :signup]

  layout "browse"

  def login
    session[:user_id] = nil
    if request.post?
      user = User.authenticate(params[:login], params[:password])
      if user
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        redirect_to( uri || { :controller => "browse", :action => "index"})
      else
        flash[:notice] = "Invalid user/password combination"
      end
    end
  end


  def signup
    @user = User.new(params[:user])
    if request.post? and @user.save
      flash[:notice] = "User #{@user.login} successfully created!"
      @user = User.new
      session[:user_id] = @user.id
      redirect_to(:controller => "browse", :action => "index")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to(:controller => "browse", :action => "index")
  end

end
