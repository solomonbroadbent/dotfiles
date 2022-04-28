# bind up and down keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# can use k and j to navigate history in vi mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
