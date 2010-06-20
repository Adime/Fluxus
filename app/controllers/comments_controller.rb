class CommentsController < ApplicationController

  hobo_model_controller

  auto_actions :destroy

  def create_for_entry
    # Remove user spoofing
    # Hobo should make this easier
    params["comment"].delete("user_id")
    hobo_create
  end

end
