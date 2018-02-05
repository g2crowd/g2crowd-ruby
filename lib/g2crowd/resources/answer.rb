module G2crowd
  class Answer < Base
    belongs_to :question
    belongs_to :survey_response
  end
end
