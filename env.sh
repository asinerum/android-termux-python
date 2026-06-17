#!/data/data/com.termux/files/usr/bin/bash
VENV_PATH="./venv/bin/activate"
if [ -f "$VENV_PATH" ]; then
  echo "Activating virtual environment.."
  exec bash --rcfile "$VENV_PATH" -i
else
  echo "Virtual environment not found at $VENV_PATH"
fi
