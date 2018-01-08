class CreateCreateEncrypteds < ActiveRecord::Migration[5.1]
  def change
    create_table :create_encrypteds do |t|
      t.string :encrypted

      t.timestamps
    end
  end
end
