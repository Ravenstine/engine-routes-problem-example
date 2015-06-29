class CreateNewsStories < ActiveRecord::Migration
  def change
    create_table :news_stories do |t|
      t.string :name
      t.string :headline
      t.string :short_headline
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
