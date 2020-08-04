class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recepient, class_name: "User"

  validates :private_message, presence: true, length: { minimum: 15, maximum: 500 }
end
