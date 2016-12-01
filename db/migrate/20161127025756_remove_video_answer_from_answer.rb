class RemoveVideoAnswerFromAnswer < ActiveRecord::Migration
  def change
    remove_column :answers, :video_answer, :binary
  end
end
