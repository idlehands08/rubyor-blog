class Article < ApplicationRecord
    validates :title, :author, :content, presence: true, uniqueness: {scope: 'title', message: 'should be unique'}
    validates :content, presence: true
    has_many :comments

    def full_name
        "#{title} - #{author}"
    end

end
