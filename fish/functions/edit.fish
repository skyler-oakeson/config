function edit --wraps='fd --type f --hidden --exclude .git | fzf-tmux --preview --reverse | xargs nvim' --description 'alias edit=fd --type f --hidden --exclude .git | fzf-tmux --preview --reverse | xargs nvim'
  fd --type f --hidden --exclude .git | fzf-tmux --preview --reverse | xargs nvim $argv
        
end
