class FrontController < ApplicationController

  hobo_controller

  def index
    @readme = RDiscount.new(open("README.markdown").read, :autolink).to_html
  end

  def summary
    if !current_user.administrator?
      redirect_to user_login_path
    end
  end

  def search
    if params[:query]
      site_search(params[:query])
    end
  end

end
