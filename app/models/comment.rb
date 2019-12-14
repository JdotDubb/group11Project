class Comment < ApplicationRecord
  belongs_to :note
  validates :commenter, presence: true
    validates :body, presence: true
end
