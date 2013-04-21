class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :site_address
      t.time   :start
      t.time   :end
      t.string :days
      t.float  :cost
      t.string :instruction_language
      t.string :description
      t.string :instruction_mode

      t.timestamps
    end
  end
end
