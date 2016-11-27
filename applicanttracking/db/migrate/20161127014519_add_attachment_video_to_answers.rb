class AddAttachmentVideoToAnswers < ActiveRecord::Migration
  def self.up
    change_table :answers do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :answers, :video
  end
end
