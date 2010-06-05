class LibraryHints < Hobo::ViewHints

  # model_name "My Model"
  field_names :package => "Source type", 
              :repository => "Source URL"
  field_help :package => "How the library is available, choices are, swc, svn or git.",
             :repository => "Source repo, zip or swc download URL",
             :tags => "comma separated list of keywords to describe the library"
  # children :primary_collection1, :aside_collection1, :aside_collection2
end
