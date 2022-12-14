# frozen_string_literal: true

class DeviseCreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      ## Database authenticatable
      # 氏名(姓)
      t.string :first_name,         null: false, default: ""
      # 氏名(名)
      t.string :last_name,          null: false, default: ""
      # 氏名(セイ)
      t.string :first_kana,          null: false, default: ""
      # 氏名(メイ)
      t.string :last_kana,          null: false, default: ""
      # 電話番号
      t.string :phone,              null: false, default: ""
      # 郵便番号
      t.string :post_code,              null: false, default: ""
      # 住所
      t.string :address,              null: false, default: ""
      # 年齢
      t.string :age,              null: false, default: ""
      # メールアドレス
      t.string :email,              null: false, default: ""
      # パスワード
      t.string :encrypted_password, null: false, default: ""
      # 退会フラグ
      t.boolean :is_deleted,        null: false, default: false

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :customers, :email,                unique: true
    add_index :customers, :reset_password_token, unique: true
    # add_index :customers, :confirmation_token,   unique: true
    # add_index :customers, :unlock_token,         unique: true
  end
end
