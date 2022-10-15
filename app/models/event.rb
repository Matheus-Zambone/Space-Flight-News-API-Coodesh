class Event < ApplicationRecord
  has_many :article_events, dependent: :destroy
  has_many :articles, through: :article_events
end
