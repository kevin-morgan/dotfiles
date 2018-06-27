# ---------------------------------------------------------------------
# KEVIN'S OMZ V2015.04.03
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# REBOOT / HALT / POWEROFF
# CPU
# PROCESS
# MEMORY
# DISK
# NETWORKING
# TIME
# ---------------------------------------------------------------------



# ---------------------------------------------------------------------
# NETWORKING
# ---------------------------------------------------------------------

psg () {
  ps -ef | grep ${1}
}

psig () {
  ps -ef | grep -i ${1}
}


# ---------------------------------------------------------------------
# TMUX
# ---------------------------------------------------------------------

function has-session {
  # $? = success if tmux session exists
  tmux has-session -t $1 2>/dev/null
}

function session-test {
  tmux new-session -d -s test
  tmux neww -k -t test:1
}

