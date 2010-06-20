class Library < ActiveRecord::Base

  require 'hobosupport'
  require 'hobofields'
  HoboFields.enable

  hobo_model # Don't put anything above this

  fields do
    name        :string, :index => true
    summary     :string
    description :markdown
    package     enum_string(:git, :svn, :swc, :zip)
    repository  :string
    sourcepath  :string
    license     :string
    host        :string
    homepage    :string
    docs        :string
    tags        :string
    creator     :string, :class_name => "User", :creator => true
    timestamps
  end

  has_many :comments, :dependent => :destroy

  set_search_columns :name, :tags, :summary, :description
  
  set_default_order "name"

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
