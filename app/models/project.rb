class Project < ApplicationRecord
  enum state:[:propuesta, :en_progreso, :terminado]
  validates :name, presence: true
  validates :description, presence: true
  validates :state, presence: true
end
