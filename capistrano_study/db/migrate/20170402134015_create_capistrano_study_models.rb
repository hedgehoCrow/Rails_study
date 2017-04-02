class CreateCapistranoStudyModels < ActiveRecord::Migration[5.0]
  def change
    create_table :capistrano_study_models do |t|
      t.string :field1
      t.integer :field2
      t.date :field3
      t.boolean :field4

      t.timestamps
    end
  end
end
