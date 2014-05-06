class User < ActiveRecord::Base
    # creating a 1 to many association that one user can have many microposts
    has_many :microposts
end
