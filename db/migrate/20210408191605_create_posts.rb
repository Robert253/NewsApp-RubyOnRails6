class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :conclusion
      t.belongs_to :user_id, index: true

      t.timestamps
    end
  end
end
