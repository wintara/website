class CreateKaryawans < ActiveRecord::Migration
  def change
    create_table :karyawans do |t|
      t.string :nip
      t.string :nama
      t.string :alamat

      t.timestamps null: false
    end
  end
end
