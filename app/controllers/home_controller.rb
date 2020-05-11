class HomeController < ApplicationController
 def index
  	if user_signed_in?
  		@teams = Team.where('id = ?', current_user.team_ids)
  		@projects = Project.where('team_id = ?', current_user.team_ids)
  	end

  	# @activities = PublicActivity::Activity.order("created_at DESC").where(owner_id: current_user, owner_type: "User")
  end
end
