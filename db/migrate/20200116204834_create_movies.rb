class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :budget
      t.string :image_url
      t.string :box_office_revenue
      t.string :description
      t.string :name
      t.string :rating
      t.string :runtime

      t.timestamps
    end
  end
end
