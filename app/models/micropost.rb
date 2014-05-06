class Micropost < ActiveRecord::Base
    # what we did is that we created a validation for the length of the content. If the micropost contains more than 140 characters, the app will throw an error message
    belongs_to :user
    validates :content, length: { maximum: 140  }
end
