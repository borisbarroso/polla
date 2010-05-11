class CreateEquipos < ActiveRecord::Migration
  def self.up
    create_table :equipos do |t|
      t.references :grupo
      t.string :nombre
      t.string :bandera

      t.timestamps
    end

    add_index :equipos, :grupo_id
  end

  def self.down
    drop_table :equipos
  end
end
