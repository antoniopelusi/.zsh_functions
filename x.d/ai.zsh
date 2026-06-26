# Start an AI chat session with Qwen2.5 Coder via ollama
MODEL="hf.co/bartowski/Qwen2.5-Coder-3B-Instruct-GGUF:Q4_K_M"
SYSTEM="You are a code assistant. If the task can be solved with code, respond with ONLY the raw code, no explanations, no markdown fences. If the input is a question or cannot be answered with code, respond concisely in plain text."
TEMP=0

if (( $# == 0 )); then
  ollama run "$MODEL"
else
  curl -s http://localhost:11434/api/chat -d "{\"model\":\"$MODEL\",\"stream\":false,\"options\":{\"temperature\":$TEMP},\"messages\":[{\"role\":\"system\",\"content\":\"$SYSTEM\"},{\"role\":\"user\",\"content\":\"$*\"}]}" \
  | python3 -c "
import json, re
content = json.load(open(0))['message']['content']
match = re.search(r'\`\`\`(?:\w+\n|\n)?(.*?)\`\`\`', content.strip(), re.DOTALL)
print(match.group(1).strip() if match else content)
"
fi
