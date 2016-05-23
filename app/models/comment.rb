class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link, through: :user
end
