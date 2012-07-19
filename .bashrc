# Ryan Turner
# .bashrc

# Append MacPorts to PATH
if [ -d /opt/local/bin -a -d /opt/local/sbin ]; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi

# Append ~/(bin|.bin) to PATH
if [ -d ~/bin ]; then
    export PATH=$HOME/bin:$PATH
elif [ -d ~/.bin ]; then
    export PATH=$HOME/.bin:$PATH
fi
