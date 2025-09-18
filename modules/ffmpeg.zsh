function wav_to_mp3() {
  if [[ $# -ne 2 ]]; then
    echo "Usage: wav_to_mp3 <input.wav> <output.mp3>"
    return 1
  fi

  local input_file="$1"
  local output_file="$2"

  if [[ ! -f "$input_file" ]]; then
    echo "Input file does not exist: $input_file"
    return 1
  fi

  ffmpeg -i "$input_file" -acodec libmp3lame "$output_file"
}