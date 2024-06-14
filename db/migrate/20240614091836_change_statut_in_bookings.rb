class ChangeStatutInBookings < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bookings, :statut, 'en attente'

   
    execute <<-SQL
      ALTER TABLE bookings
      ADD CONSTRAINT statut_check
      CHECK (statut IN ('en attente', 'accepter', 'refuser'))
    SQL
  end
end
