class LibrariesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def catalogxml
    @libraries = Library.all
  end

  def tableplus
    @libraries = Library.all
  end


#  def table
#  end

end
