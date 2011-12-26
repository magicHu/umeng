class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.where(:nickname => params[:nickname], :imsi => params[:imsi])

    respond_to do |format|
      if @user
        session[:user_id] = @user.id
        
        format.html { redirect_to root_url }
        format.json { render json: @user }
      else
        format.html { render action: "new" }
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
