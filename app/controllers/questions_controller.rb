class QuestionsController < ApplicationController
  def ask
  end


  def answer
# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
    @question = params[:Question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

#   if your_message.include?('?')
#     "Silly question, get dressed and go to work!"
#   elsif your_message == "I am going to work right now!"
#     ""
#   else
#     "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   if your_message == 'I AM GOING TO WORK RIGHT NOW!'
#     ""
#   elsif your_message.upcase == your_message
#     "I can feel your motivation! #{coach_answer (your_message)}"

#   else
#     coach_answer(your_message)
#   end
