class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tag_gossip_links
  has_many :tags, through: :tag_gossip_links
  has_many :comments

  validates :title,
  presence: true,
  length: { in: 3..14 }

  validates :content,
  presence: true

end
