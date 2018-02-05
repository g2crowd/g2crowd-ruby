module G2crowd
  class Product < Base
    has_many :survey_responses
    has_many :categories
  end
end
