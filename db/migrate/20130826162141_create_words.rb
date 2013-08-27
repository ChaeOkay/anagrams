class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :full
      t.string :sorted
    end
  end
end
