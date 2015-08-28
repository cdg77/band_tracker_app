class CreateVenues < ActiveRecord::Migration
  def change
    create_table(:venues) do |t|
      t.column(:place, :string)

      t.timestamps()
    end
  end
end
