json.extract! answer, :id, :text_answer, :data_type, :question_id, :user_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)
if answer.video.present?
	json.video answer.video.url
end