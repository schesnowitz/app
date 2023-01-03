class EventsController < ApplicationController

    def index

    client = OpenAI::Client.new(access_token: "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")
    client = OpenAI::Client.new
    response = client.completions(
    parameters: {
        model: "text-davinci-003",
        prompt: "What is a lumper service",
        temperature: 0.5,
        max_tokens: 4000,
        top_p: 1,
        frequency_penalty: 0,
        presence_penalty: 0
    }
)



# Print the generated response
puts response

    
    end
end

