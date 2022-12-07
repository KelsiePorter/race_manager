class Participant < ApplicationRecord
  belongs_to :race

  validates_presence_of :first_name, 
                        :last_name, 
                        :age

  def self.professional_racers
    where(professional_racer: "true")
  end
end