class Outpost::NewsStoriesController < Outpost::ResourceController
  outpost_controller

  define_list do |l|
    l.default_order_attribute   = "updated_at"

    l.column :headline
    l.column :byline
    l.column :audio
    l.column :published_at,
      :sortable                   => true

    l.column :status, display: :display_article_status
    l.column :updated_at,
      :sortable                   => true

    l.filter :status, collection: -> { NewsStory.all}

  end

  def index
    if current_user
      render text: "success"
    else
      redirect_to outpost.login_path
    end
  end

end
