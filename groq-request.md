# Calling an LLM via the Groq API

Same request as in Postman, shown as curl. The API key is read from an
environment variable and is NOT stored in this repo.

- Method: POST
- URL: https://api.groq.com/openai/v1/chat/completions
- Auth: Bearer token (my Groq API key)
- Body: raw JSON

Example:

    export GROQ_API_KEY="<your key here>"

    curl https://api.groq.com/openai/v1/chat/completions \
      -H "Authorization: Bearer $GROQ_API_KEY" \
      -H "Content-Type: application/json" \
      -d '{"model": "openai/gpt-oss-20b", "messages": [{"role": "user", "content": "What is REST?"}]}'

Response: status 200 OK. The answer is in choices[0].message.content.
