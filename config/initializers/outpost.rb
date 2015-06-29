Outpost::Config.configure do |config|
  config.registered_models = [
    "NewsStory"
  ]
  config.title_attributes      = [:name, :headline, :short_headline, :title]
  config.excluded_list_columns = ["body"]
  config.user_class                   = "User"
  config.authentication_attribute     = :email
end