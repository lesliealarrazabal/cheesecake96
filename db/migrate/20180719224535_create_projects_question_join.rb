class CreateProjectsQuestionJoin < ActiveRecord::Migration
  def change
    create_table :projects_questions, :id => false do |t|
      t.integer 'project_id'
      t.integer 'question_id'
    end
    add_index('projects_questions',['project_id','question_id'])
  end
end
