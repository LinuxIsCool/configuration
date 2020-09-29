function RunBackup
    echo Pushing ~/.vim to GitHub
    cd ~/.vim
    git add .
    git commit --ammend -m "Running Backup: (date +%D)
    git push origin master

    echo Pushing ~/.config/fish to GitHub
    cd ~/.config/fish
    git add config.fish functions/
    git commit --ammend -m "Running Backup: (date +%D)
    git push origin master

    echo Pushing ~/.config/tmux to GitHub
    cd ~/.config/tmux
    git add .
    git commit --ammend -m "Running Backup: (date +%D)
    git push origin master

    echo Pushing ~/Documents/Notes to GitHub
    cd ~/Documents/Notes/
    git add .
    git commit --ammend -m "Running Backup: (date +%D)
    git push origin master

    cp ~/Documents ~/sfuhome/Documents

end

