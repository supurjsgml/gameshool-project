class FreematchController < ApplicationController
    
    def index
        
    end
    
    def add_team
      
        @ccc = Teamlist.where(:lol_current_user_id => current_user.id).take
        
        @bbb = Teamlist.all
        
      
    end
    
    def team_list
        
        @teamlists = Teamlist.all
        
    end
    
    def team_list_write
        
        @teamlists = Teamlist.new
        @teamlists.kind_of_game = params[:radio]
        @teamlists.game_id =  params[:fifa_game_id] + params[:hearthstone_game_id]
        @teamlists.tear = params[:fifa_tear] + params[:hearthstone_tear]
        @teamlists.comment = params[:lol_team_comment] + params[:fifa_team_comment] + params[:hearthstone_team_comment]
        
        
        
        
      # 하스스톤 학과, 이름
        @teamlists.hearthstone_major = params[:hearthstone_major]
        @teamlists.hearthstone_user_name = params[:hearthstone_user_name]
        
        
      # 피파 학과, 이름
        @teamlists.fifa_major = params[:fifa_major]
        @teamlists.fifa_user_name = params[:fifa_user_name] 
        
        
        
        
      # 롤 학과
        @teamlists.lol_major = params[:lol_major]
        
        
      # 롤 팀명 
        @teamlists.lol_team_name = params[:lol_team_name]
        @teamlists.lol_current_user_id = params[:lol_current_user_id]
        
        
        
      # LoL Game Id DB
        @teamlists.lol_leader_id = params[:lol_leader_id]
        @teamlists.lol_user_id_1 = params[:lol_user_id_1]
        @teamlists.lol_user_id_2 = params[:lol_user_id_2]
        @teamlists.lol_user_id_3 = params[:lol_user_id_3]
        @teamlists.lol_user_id_4 = params[:lol_user_id_4]
        
      # LoL user Tear
        @teamlists.lol_leader_tear = params[:lol_leader_tear]
        @teamlists.lol_tear_user_1 = params[:lol_tear_user_1]
        @teamlists.lol_tear_user_2 = params[:lol_tear_user_2]
        @teamlists.lol_tear_user_3 = params[:lol_tear_user_3]
        @teamlists.lol_tear_user_4 = params[:lol_tear_user_4]
        
      # LoL  user name
        @teamlists.leader_name = params[:leader_name]
        @teamlists.lol_member_name_1 = params[:lol_member_name_1]
        @teamlists.lol_member_name_2 = params[:lol_member_name_2]
        @teamlists.lol_member_name_3 = params[:lol_member_name_3]
        @teamlists.lol_member_name_4 = params[:lol_member_name_4]
        @teamlists.save
        
        
        redirect_to '/freematch/team_list'
        
    end
    
    def team_info
        
        @teamlists = Teamlist.find(params[:id])
        
        @subscription_name = Fightsubscription.all
        
       
        
        @aaa = Teamlist.where(:lol_current_user_id => current_user.id).take
        @bbb = Fightsubscription.where(:lol_add_tema_name_id => current_user.id).take
        
    end
    


   # 대결신청 시 신청팀 저장 시킴
    def subscription_write
      
      
        subscription = Fightsubscription.new
        subscription.lol_subscription_team_name = params[:content]
        subscription.teamlist_id = params[:teamlist_id]
        subscription.lol_add_tema_name_id = params[:lol_add_tema_name_id]
        subscription.save
        
       render :text =>""
        
    end
   # 대결신청 시 신청팀 저장 시킴 끝 
    
    def rank
      render layout: false
    end
    
    def loldetailrank
    end
    
    def daejin
    end
    
   
    
 
end
