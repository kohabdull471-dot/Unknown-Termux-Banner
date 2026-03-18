import random
import sys

def rainbow_text(text):
    # ANSI color codes for the terminal
    colors = [
        "\033[31m", # Red
        "\033[32m", # Green
        "\033[33m", # Yellow
        "\033[34m", # Blue
        "\033[35m", # Magenta
        "\033[36m", # Cyan
        "\033[91m", # Light Red
        "\033[92m", # Light Green
        "\033[93m", # Light Yellow
        "\033[94m", # Light Blue
    ]
    reset = "\033[0m"
    
    colored_result = ""
    for char in text:
        if char == " ":
            colored_result += " "
        else:
            # Pick a random color from our list
            color = random.choice(colors)
            colored_result += f"{color}{char}{reset}"
    
    return colored_result

if __name__ == "__main__":
    if len(sys.argv) > 1:
        user_input = " ".join(sys.argv[1:])
        print(rainbow_text(user_input))
    else:
        print("Usage: python color_text.py [your text here]")
