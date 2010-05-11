class CreatePartidos < ActiveRecord::Migration
  def self.up
    create_table :partidos do |t|
      t.integer :equipo1
      t.integer :equipo2
      t.string :lugar
      t.datetime :fecha
      t.integer :goles_equipo1
      t.integer :goles_equipo2
      t.string :tipo
      t.boolean :jugado
      t.boolean :publicar

      t.timestamps
    end

    add_index :partidos, :equipo1
    add_index :partidos, :equipo2
    add_index :jugado
  end

  def self.down
    drop_table :partidos
  end
end
