class HomeController < ApplicationController
 def index
  	if user_signed_in?
  		@teams = Team.where('id = ?', current_user.team_ids)
  		@projects = Project.where('team_id = ?', current_user.team_ids)
  	end

  
  end
end
