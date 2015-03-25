class YearSummaryAnswerSerializer < ActiveModel::Serializer
  attributes :year_id, :question_id, :answer_id, :percentage_this_year, :change_from_last_year, :total_votes
end
