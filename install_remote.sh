#-----------------------------------------------------------------------
#        Author: Aamnah
#          Link: https://aamnah.com
#        Github: https://github.com/aamnah/tmux-flat-theme
#   Description: installs Flat theme for tmux
#        System: Armbian OS - Orange Pi Plus2 / Raspberry Pi 3
# Compatibility: Debian, Ubuntu, Armbian
#-----------------------------------------------------------------------

# Does:
# 1. Creates a `~/.tmux/` directory if one doesn't exist
# 2. Creates a `~/.tmux.conf` file if one doesn't exist
# 3. Copies the required theme files `flattheme.conf` and `flattheme.tmux` 
#    to the `~/.tmux` folder
# 4. Add the code to load the theme inside `~/.tmux.conf`

GITHUB_THEMEFILE_URL='https://raw.githubusercontent.com/aamnah/tmux-flat-theme/master/flattheme.tmux'
GITHUB_CONFFILE_URL='https://raw.githubusercontent.com/aamnah/tmux-flat-theme/master/flattheme.conf'

# Script
#-----------------------------------------------------------------------

install ()  {
	
	# Make directory `~/.tmux` if one doesn't exist
	if ! [ -d ${HOME}/.tmux ]; then # (-d: file exists and is a dir)
		echo -e "\n Creating ~/.tmux/ ... \n"
		mkdir ${HOME}/.tmux
	fi
	
	# Copy the theme file from the github repo to `~/.tmux`
	echo -e "\n Copying theme to ~/.tmux/ ... \n"
	curl ${GITHUB_THEMEFILE_URL} -o ${HOME}/.tmux/flattheme.tmux
	curl ${GITHUB_CONFFILE_URL} -o ${HOME}/.tmux/flattheme.conf
	
	# Make the theme executable
	# (this avoids the 'returned 126' error)
	chmod +x ${HOME}/.tmux/flattheme.tmux
	
	# Create `~/.tmux.conf` if one doesn't exist
	if ! [ -e ${HOME}/.tmux.conf ]; then # (-e: file exists)
		echo -e "\n Creating ~/.tmux.conf file ... \n"
		touch ${HOME}/.tmux.conf
	fi
	
	# Source the copied theme file in `~/.tmux` inside `~/.tmux.conf`
	echo -e "\n Adding theme to ~/.tmux.conf ... \n"
	echo -e "run '${HOME}/.tmux/flattheme.tmux'" >> ${HOME}/.tmux.conf
	
	# SUCCESS
	echo -e "\n DONE ! \n"
	
}

install
