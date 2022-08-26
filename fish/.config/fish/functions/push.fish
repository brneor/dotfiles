function push
    if git rev-parse --is-inside-work-tree | grep -q true
        for REMOTE in (git remote)
            echo (set_color --bold cyan) Pushing changes to remote $REMOTE...(set_color normal)
            git push $REMOTE --all
            echo \n
        end
    else
        echo Not a git repository!
    end
end
