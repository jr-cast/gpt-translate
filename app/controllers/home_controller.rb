class HomeController < ApplicationController
  def index
  end

  def create
    client = OpenAI::Client.new
    prompt = params[:prompt]
    response = client.completions(
      parameters: {
        model: "text-davinci-001",
        prompt: prompt,
        max_tokens: 5
      }
    )
    
    puts response
  end
end
