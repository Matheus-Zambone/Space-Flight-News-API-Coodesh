class AddReferencesToArticleEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :article_events, :article, null: false, foreign_key: true
    add_reference :article_events, :event, null: false, foreign_key: true
  end
end
