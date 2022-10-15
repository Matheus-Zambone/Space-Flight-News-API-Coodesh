class Article < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :imageUrl, presence: true
  validates :newsSite, presence: true
  validates :summary, presence: true
  validates :publishedAt, presence: true
end
