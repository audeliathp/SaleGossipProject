class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tagossips
  has_many :tags, through: :tagossips
end
