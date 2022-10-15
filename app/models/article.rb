class Article < ApplicationRecord
  has_many :article_launches, dependent: :destroy
  has_many :launches, through: :article_launches

  has_many :article_events, dependent: :destroy
  has_many :events, through: :article_events

  validates :title, presence: true
  validates :url, presence: true
  validates :imageUrl, presence: true
  validates :newsSite, presence: true
  validates :summary, presence: true
  validates :publishedAt, presence: true
end
