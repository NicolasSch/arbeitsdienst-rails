class CreateLaborServices < ActiveRecord::Migration[5.2]
  def change
    create_table :labor_services do |t|

      t.timestamps
      t.belongs_to :user
      t.text :description
      t.string :title
      t.datetime :start_at
      t.datetime :ends_at
    end
  end
end
