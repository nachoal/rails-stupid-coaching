# frozen_string_literal: true

# test
class QuestionsController < ApplicationController
  def ask
    
  end

  def answer
    @question = params[:question]
    puts case
         when @question.match?('I am going to work')
           return @answer = 'Great!'
         when @question.match?(/[$?]/)
           return @answer = 'Silly question, get dressed and go to work!.'
         else
           return @answer = 'I don\'t care, get dressed and go to work!'
         end
  end
end
