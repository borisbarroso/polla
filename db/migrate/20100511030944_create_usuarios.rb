class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombre, :limit => 100
      t.string :password, :limit => 32, :null => false
      t.string :email, :limit => 150, :null => false
      t.string :alias, :limit => 20
      t.string :telefono, :limit => 15
      t.string :celular, :limit => 15

      t.timestamps
    end
    add_index :usuarios, :email, :unique => true
  end

  def self.down
    drop_table :usuarios
  end
end
