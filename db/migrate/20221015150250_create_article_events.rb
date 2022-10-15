class CreateArticleEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :article_events do |t|

      t.timestamps
    end
  end
end
