class Comment < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    body  :markdown
    timestamps
  end

  belongs_to :user, :creator => true
  belongs_to :library

  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
