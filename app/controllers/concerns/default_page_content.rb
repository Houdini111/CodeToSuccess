module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults
    
  end
  
  def set_page_defaults
    @page_title = "Alex Fenton Portfolio"
    @seo_keywords = "Alex Fenton Portfolio"
  end
end