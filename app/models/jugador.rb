class Jugador < ActiveRecord::Base
  belongs_to :equipo

  validates_presence_of :nombre, :equipo_id

  before_create :set_goles

private
  def set_goles
    self.goles = 0
  end

end
