class Equipo < ActiveRecord::Base
  belongs_to :grupo
  has_many:jugadores

  validates_presence_of :nombre, :grupo_id
  validates_uniqueness_of :nombre

  def before_validation
    self.nombre = nombre.strip
  end

  def to_s
    nombre
  end

end
