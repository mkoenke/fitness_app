class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.date :date
      t.time :time
      t.string :kind
      t.integer :user_id
      t.timestamps
    end
  end
end
