#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Generate Random adjective_noun
# @raycast.mode inline

# Optional parameters:
# @raycast.icon 🎱

# Documentation:
# @raycast.description generates a random adjective_noun combination.
# @raycast.author Benoit Perigaud
# @raycast.authorURL https://github.com/b-per

noun=$(curl -Ls https://random-word-form.herokuapp.com/random/noun)
adjective=$(curl -Ls https://random-word-form.herokuapp.com/random/adjective)

genword="${adjective//[\[\]\"]/}_${noun//[\[\]\"]/}"
echo "$genword" | pbcopy
echo "$genword"

