module G2crowd
  class Question < Base
    has_many :survey_response
    has_many :answers
  end
end
