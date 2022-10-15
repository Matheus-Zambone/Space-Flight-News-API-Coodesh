class ArticleEvent < ApplicationRecord
  belongs_to :article
  belongs_to :event
end
