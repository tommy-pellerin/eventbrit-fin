class CreateEventSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :event_submissions do |t|
      t.boolean :validated, default: false
      t.boolean :reviewed, default: false
      t.belongs_to :event, index: true #cette ligne rajoute la référence à la table events
      
      t.timestamps
    end
  end
end
