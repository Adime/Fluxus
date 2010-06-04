class Library < ActiveRecord::Base

  require 'hobosupport'
  require 'hobofields'
  HoboFields.enable

  hobo_model # Don't put anything above this

  fields do
    name        :string
    package     enum_string(:git, :svn, :swc, :zip)
    repository  :string
    licence     :string
    host        :string
    description :textile
    homepage    :string
    docs        :string
    tags        :string
    timestamps
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
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
