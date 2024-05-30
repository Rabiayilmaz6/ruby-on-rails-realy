class Article < ApplicationRecord
    enum status: { draft: 0, published: 1, archived: 2 }
  
    validates :title, presence: true, length: { maximum: 140 }
    validates :status, presence: true
  
    has_rich_text :content
  end
  