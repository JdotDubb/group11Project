class Note < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true
    validates :text, presence: true, length: {minimum: 5 }
end
