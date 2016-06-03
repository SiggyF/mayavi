if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    brew update
    brew tap homebrew/science
    brew tap homebrew/python
    brew install python
    brew install pyqt
    brew install wxpython
    brew install numpy

    which python
    python --version
else
    ccache -s
    export PATH=/usr/lib/ccache:${PATH}
    pip install --upgrade pip
    xpra --xvfb="Xorg +extension GLX -config /etc/xpra/xorg.conf -logfile ${HOME}/.xpra/xorg.log"  start :9
    export DISPLAY=:9
fi
