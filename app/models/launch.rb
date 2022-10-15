class Launch < ApplicationRecord
  has_many :article_launches, dependent: :destroy
  has_many :articles, through: :article_launches
end
