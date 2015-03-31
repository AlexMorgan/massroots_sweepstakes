class CreateExternalPosts < ActiveRecord::Migration
  def change
    create_table :external_posts do |t|
      t.string :type
      t.references :user
      t.string :external_id
      t.timestamps
    end

    add_index :external_posts, :user_id
  end
end
