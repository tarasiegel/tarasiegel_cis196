class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :date, :title, :user_id
end