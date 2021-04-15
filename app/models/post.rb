class Post < ApplicationRecord
  belongs_to :user

  # Db query making posts in order
  scope :most_recent, -> { order(id: :desc)}

  # Method for pushing date ('%-b %-d, %y') formatting date
  # putting variable inside string
  def display_day_published
    "Published : #{created_at.strftime('%-b %-d, %Y')}"
  end


    def publish
      respond_to do |format|
        if @post.publish(post_params)
          format.html { redirect_to @post, notice: "Post was successfully updated." }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
  end
