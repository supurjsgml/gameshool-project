class CreateTeamlistHearthstones < ActiveRecord::Migration
  def change
    create_table :teamlist_hearthstones do |t|
      
          t.string :game_id,                        null: false, default: ""          #팀등록 게임ID
          t.string :tear,                           null: false, default: ""         #팀등록 계급
          t.text :comment,                          null: false, default: ""         #팀등록 소개
          t.integer :hearthstone_current_user_id,   null: false, default: ""
          
          t.string :hearthstone_major,              null: false, default: "" #hearthstone_major
          t.string :hearthstone_user_name,          null: false, default: ""  #하스스톤 유저 이름  
      
      t.timestamps null: false
    end
  end
end