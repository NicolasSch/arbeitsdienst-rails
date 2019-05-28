class CreateLaborServiceUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :labor_service_users do |t|

      t.belongs_to :user
      t.belongs_to :labor_service
      t.timestamps
    end
  end
end
