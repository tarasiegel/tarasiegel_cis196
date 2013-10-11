class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :date, :title, :user_id

  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 5}


end