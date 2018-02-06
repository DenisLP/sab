class AgentController < ApplicationController
  def login
  end

  def select_customer
    agents = [['denis', 4242], ['gustavo', 4242], ['simon', 4242], ['jack', 4242]]
    
    @pin = params[:pin]
    @agent = params[:agent]
    
    @message = 'Login failed'
    agents.each do |agent|
      if agent[0].eql? @agent
        @message = 'Login Successful'
      else
        @message = "LOGIN FAIL" + agent[0].to_s + @agent.to_s
      end
    end
    
    @contacts = Contact.all
    
  end
end
