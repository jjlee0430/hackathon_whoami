class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user
      t.string :participant
      t.belongs_to :post

      t.timestamps
    end
  end
end
