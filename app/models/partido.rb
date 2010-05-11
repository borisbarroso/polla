class Partido < ActiveRecord::Base
  validates_presence_of :equipo1, :equipo2

  def before_create
    self.goles_equipo1 = 0
    self.goles_equipo2 = 0
  end
end
