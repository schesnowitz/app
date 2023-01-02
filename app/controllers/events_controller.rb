class EventsController < ApplicationController

    def index

client = OpenAI::Client.new(access_token: "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")
# Use the client to generate a response
# response = client.edits(
#     parameters: {
#         model: "text-davinci-edit-001",
#         input: "what is 2 + 2?",
#         instruction: "Fix the spelling mistakes"
#     }
# )
# puts response.dig("choices", 0, "text")


# puts client.models.list
# puts client.models.retrieve(id: "text-davinci-001")
response = client.completion.create(
    parameters: {
        model: "text-davinci-002",
        prompt: "What is the capital of France?",
        temperature: 0.5,
        max_tokens: 32,
        top_p: 1,
        frequency_penalty: 0,
        presence_penalty: 0
    }
)



# Print the generated response
puts response


    end
end

