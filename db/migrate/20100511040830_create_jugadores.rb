class CreateJugadores < ActiveRecord::Migration
  def self.up
    create_table :jugadores do |t|
      t.integer :equipo_id, :null => false
      t.string :nombre, :limit => 100
      t.integer :numero
      t.integer :goles

      t.timestamps
    end
    add_index :jugadores, :equipo_id
    add_index :jugadores, :nombre
  end

  def self.down
    drop_table :jugadores
  end
end
