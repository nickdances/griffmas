class RequestsController < ApplicationController

def create 
  @request = Request.new(request_params)
  if @request.save 
    flash[:success] = "Success!"
    render 'griffmas/home'
  else
    flash[:error] = "It didn't work!"
    render 'griffmas/home'
  end
end

private

  def request_params
    params.require(:name, :email, :request).permit(:platform)
  end
end