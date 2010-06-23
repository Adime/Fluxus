class LibrariesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  # to be called as catalog.xml
  index_action :catalog

end
