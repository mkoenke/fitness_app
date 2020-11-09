class CreateExerciseWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_workouts do |t|
      t.string :workout_id
      t.string :exercise_id
      t.integer :reps
      t.integer :sets
      t.timestamps
    end
  end
end
