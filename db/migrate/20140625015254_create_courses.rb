class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :location
      t.integer :difficulty
      t.string :description
      t.integer :time
      t.string :days
      t.belongs_to :major, index: true
      t.belongs_to :school, index: true

      t.timestamps
    end
  end
end
