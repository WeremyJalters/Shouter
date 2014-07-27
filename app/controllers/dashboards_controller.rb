class DashboardsController < ApplicationController
 def show
 	@note = Note.new 
 	@notes = current_user.notes
 end
end