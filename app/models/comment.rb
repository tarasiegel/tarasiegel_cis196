class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :user_id, :body, :id
end
