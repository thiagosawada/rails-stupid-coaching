class CoachingController < ApplicationController
  def answer
    @query = params[:query]

    def coach_answer(your_message)
      answer = ''
      correct_answer = "I am going to work right now!"
      if your_message.end_with?("?")
        answer = "Silly question, get dressed and go to work!"
        answer
      elsif your_message == correct_answer
        answer
      else
        "I don't care, get dressed and go to work!"
      end
    end

    def coach_answer_enhanced(your_message)
      resposta = ''
      if your_message == "I am going to work right now!".upcase
        resposta
      elsif your_message == your_message.upcase
        resposta = "I can feel your motivation!"
        resposta + " " + coach_answer(your_message)
      else
        resposta = ''
        resposta + coach_answer(your_message)
      end
    end

    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end
end
