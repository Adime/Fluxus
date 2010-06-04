class LibrariesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def catalogxml
    @libraries = Library.all
  end

end
