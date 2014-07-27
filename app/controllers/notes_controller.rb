class NotesController < ApplicationController
	
	def show
		@note = Note.find(params[:id])
	end

	def create
		note = current_user.notes.build(note_parameters)
		note.save
		redirect_to dashboard_path
	end


	private

	def note_parameters
		params.require(:note).permit(:body)
	end
end