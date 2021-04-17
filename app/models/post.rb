class Post < ApplicationRecord
  belongs_to :user

  # Db query making posts in order
  scope :most_recent, -> { order(id: :desc)}

  # Method for pushing date ('%-b %-d, %y') formatting date
  # putting variable inside string
  def display_day_published
    "Published : #{created_at.strftime('%-b %-d, %Y')}"
  end
  
  def user_name_published
      "Written by: #{user.email}"
    end
end
