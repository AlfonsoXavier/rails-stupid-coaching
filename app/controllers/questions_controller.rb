class QuestionsController < ApplicationController
  def ask
  end

  def reply
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question[@question.length-1, 1] == "?"
      @answer = "Silly question, get dressed and go to work!."
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end


# def contact
#   @members = ["Eli", "Iratxe", "Emma", "Pedro", "Adam"]
#   criterion = params[:criterion]

#   if params[:criterion]
#     @members = @members.select { |member| member.start_with?(criterion) }
#   end
# end
# end
