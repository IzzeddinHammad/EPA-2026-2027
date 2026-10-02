# Lab 03 - GenAI Usage Report

## GenAI Tool Used
Google Gemini

## Prompts Used
* Asked how to pass parameters ($1, $0) and compare process numbers in Bash.
* Asked how to fix "Permission denied" using `chmod u+x`.
* Asked how to use append redirect (`>>`) with timestamps (`$(date)`).
* Asked how to use parameter `$2` to switch between screen and file output.

## Code Snippets & Modifications
* **Exercise 1 (`lab03_exercise1.sh`):** Used `if [ $ct -gt $1 ]` to check if running processes exceed user input. Applied `chmod u+x` to allow execution.
* **Exercise 2 (`lab03_exercise2.sh`):** Added `$(date)` and `>> log.txt` to append timestamped results to a log file.
* **Exercise 3 (`lab03_exercise3.sh`):** Added a check for `$2` (`if [ "$2" = "file" ]`) to allow switching between terminal output and file output.

## Reflection on Learning
AI helped me understand some basics in bash scripting which I didn't know before as I have never taken a scripting class before.
I learned what `$0`, `$1`, and `$2` represent, and how permissions work. I tested every script in the terminal with different inputs to verify they work.
