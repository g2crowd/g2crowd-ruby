module G2crowd
  class Product < Base
    has_many :survey_responses
    has_many :categories
    has_one :main_category, class_name: 'Category'
  end
end
