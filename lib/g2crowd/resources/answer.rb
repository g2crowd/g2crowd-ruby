module G2crowd
  class Answer < Base
    has_one :question
    has_one :survey_response
  end
end
