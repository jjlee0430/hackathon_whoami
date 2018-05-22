class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :username
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :hint1
      t.string :hint2
      t.string :hint3

      t.timestamps
    end
  end
end
