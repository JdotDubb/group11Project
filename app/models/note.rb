class Note < ApplicationRecord
    
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true
    validates :course, presence: true
    validates :text, presence: true, length: {minimum: 5 }
    
end
