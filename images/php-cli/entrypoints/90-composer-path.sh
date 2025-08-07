#!/bin/sh

# Setting $PATH in a Dockerfile could be overwritten again like it happens in 
# /etc/profile of alpine Images.

add_to_PATH () {
  for d; do
    case ":$PATH:" in
      *":$d:"*) :;;
      *) PATH=$PATH:$d;;
    esac
  done
}

add_to_PATH /app/vendor/bin
add_to_PATH /home/.composer/vendor/bin
