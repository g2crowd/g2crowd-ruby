module G2crowd
  class SurveyResponse < Base
    has_one :product
    has_many :questions
    has_many :answers
    def self.table_name
      "survey-responses"
    end
  end
end
