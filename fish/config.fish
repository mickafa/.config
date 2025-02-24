function fish_prompt
	string join '' -- (set_color green)  (whoami) ' ' (prompt_pwd) (set_color normal) '> '
end

function fish_right_prompt
	set -l last_status $status
	if test $last_status -ne 0
		string join '' -- (set_color red) "[$last_status] " (date +"%H:%M:%S") (set_color yellow) ' >w<' (set_color normal)
	else
		string join '' -- (set_color green) (date +"%H:%M:%S") (set_color yellow) ' OwO' (set_color normal)
	end
end


if status is-interactive
	uwufetch
	set fish_greeting ''
end
thefuck --alias | source

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/trb/.lmstudio/bin

