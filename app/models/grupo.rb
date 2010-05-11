class Grupo < ActiveRecord::Base
  has_many :equipos

  validates_presence_of :nombre
  validates_uniqueness_of :nombre

  def before_validation
    self.nombre = nombre.strip
  end

  def to_s
    nombre
  end

end
