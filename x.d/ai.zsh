# Start an AI chat session with Qwen2.5 Coder via ollama
HAS_PROMPT=$(( $# > 0 ? 1 : 0 ))
ARGS="$*"

SCRIPT=$(mktemp /tmp/ai_XXXXXX.exp)
cat > "$SCRIPT" << EOF
log_user 0
spawn env TERM=dumb ollama run hf.co/bartowski/Qwen2.5-Coder-7B-Instruct-GGUF:Q4_K_M
log_user 1
expect ">>> "
if { $HAS_PROMPT == 1 } {
  send "$ARGS\r"
}
interact
EOF

expect "$SCRIPT"
rm -f "$SCRIPT"
