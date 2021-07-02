class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.belongs_to :muscle_group, foreign_key: true

      t.timestamps
    end
  end
end
