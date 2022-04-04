class WelcomeController < ApplicationController
  def hello
    @goal_empty = Goal.count > 0 ? false : true
  end
end
