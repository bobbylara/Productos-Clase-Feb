class Producto < ActiveRecord::Base
  belongs_to :categoria
  validates_presence_of :nombre, :precio, :message => "esto es obligatorio."
  validates_uniqueness_of :nombre, :message => "este ya existe."
  validates_numericality_of :precio, :message => "no es un numero."
end