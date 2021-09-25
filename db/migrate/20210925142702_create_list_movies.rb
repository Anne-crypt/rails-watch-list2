class CreateListMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :list_movies do |t|
      t.text :comment
      t.references :list, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
