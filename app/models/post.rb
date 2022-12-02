class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :title, exclusion: {in: ['True Facts']}

end
# def is_clickbait?
#     if !title.nil? && !title.include?("Won
#         t Believe" || "Secret" || "Top
#         [number]" || "Guess")
#         errors.add(:title, "must be clickbait")
#     end
# end


