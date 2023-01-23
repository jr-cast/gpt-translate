class HomeController < ApplicationController
  before_action :create, :only => [:index, :show]

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

    res_text = response["choices"][0]["text"]

    @prompt = Prompt.new
    @prompt.body = res_text

    # redirect_to '/home'
    puts res_text
    puts @prompt.body
  end
end
