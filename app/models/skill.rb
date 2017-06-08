class Skill < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :percent_utilized
  
  after_initialize :set_defualts
  
  def set_defualts
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
