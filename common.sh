#!/bin/sh

source_rc() {
    dir="$1"
    pattern="$2"
    find "$dir" -type f -o -type l -name "$pattern" | while read fn; do 
        case $fn in
            (*~) ;;
            (.*~) ;;
            (*) 
                printf "sourcing $fn\n"
                source $fn
                ;;
        esac
    done
}
