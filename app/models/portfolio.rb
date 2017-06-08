class Portfolio < ApplicationRecord
  include Placeholder
  
  has_many :technologies
  
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails')  }
  
  after_initialize :set_defualts
  
  def set_defualts
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
