class AddPostIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :post_id, :integer
  end
end
