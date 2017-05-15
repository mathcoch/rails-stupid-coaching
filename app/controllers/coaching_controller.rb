class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask
  end

  def coach_answer(your_message)
  if your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message.downcase == "i am going to work right now!"
    return "Ok je te laisse y aller"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message == your_message.upcase
    return "I can feel your motivation! #{coach_answer(your_message)}"
  end
  return coach_answer(your_message)
end

end
