class CreateFlower < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.string :flower_name
      t.string :color
    end
  end
end
