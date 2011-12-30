class SessionsController < ApplicationController
  
  skip_before_filter :login, :only => [ :new, :create ]
  
  def new
  end

  def create
    @user = User.where(:nickname => params[:nickname], :imsi => params[:imsi]).first

    respond_to do |format|
      if @user
        session[:user_id] = @user.id
        
        format.html { redirect_to root_url, notice: "Login success." }
        format.json { render json: @user }
      else
        format.html { render action: "new", notice: 'Invaid user.' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    session[:user_id] = nil

    respond_to do |format|
      format.html { redirect_to root_url  }
      format.json { head :ok }
    end
  end

end
