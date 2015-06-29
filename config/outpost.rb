Outpost::Config.configure do |config|
  config.registered_models = [
    "NewsStory"
  ]

  # Attributes which should be looked for as "title attributes", used for representing
  # the object throughout Outpost.
  config.title_attributes      = [:name, :headline, :short_headline, :title]

  # For controllers without a list defined, Outpost will render a list
  # with all of the attributes. Add attributes here which should always be
  # excluded from these automatic lists.
  config.excluded_list_columns = ["body"]
end