class CreateGrupos < ActiveRecord::Migration
  def self.up
    create_table :grupos do |t|
      t.string :nombre, :limit => 10
      t.string :cede, :limit => 100

      t.timestamps
    end
  end

  def self.down
    drop_table :grupos
  end
end
