class AddNumCommentsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :num_comments, :integer
  end
end
