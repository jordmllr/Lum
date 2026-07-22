#!/usr/bin/env bash
# story-skeleton -- scaffold a numbered folder hierarchy
# Usage: story-skeleton --<name> [--<depth>]
# Example: story-skeleton --spice-baron --4

NAME=""
DEPTH=4

for arg in "$@"; do
    if [[ "$arg" =~ ^--([0-9]+)$ ]]; then
        DEPTH="${BASH_REMATCH[1]}"
    elif [[ "$arg" =~ ^--([a-z][a-z0-9-]*)$ ]]; then
        NAME="${BASH_REMATCH[1]}"
    else
        echo "Unknown argument: $arg" >&2
        echo "Usage: story-skeleton --<name> [--<depth>]" >&2
        exit 1
    fi
done

if [[ -z "$NAME" ]]; then
    echo "Error: a name argument is required (e.g. --spice-baron)" >&2
    echo "Usage: story-skeleton --<name> [--<depth>]" >&2
    exit 1
fi

if [[ "$DEPTH" -lt 1 ]]; then
    echo "Error: depth must be at least 1" >&2
    exit 1
fi

# Recursively create 4 sub-folders at each level.
# $1 = filesystem path of the parent directory
# $2 = dot-notation prefix for folder names (empty at root level)
# $3 = remaining depth
_make_level() {
    local parent="$1"
    local prefix="$2"
    local remaining="$3"

    [[ "$remaining" -eq 0 ]] && return

    for i in 1 2 3 4; do
        local label="${prefix:+${prefix}.}${i}"
        mkdir -p "${parent}/${label}"
        _make_level "${parent}/${label}" "$label" $(( remaining - 1 ))
    done
}

mkdir -p "$NAME"
_make_level "$NAME" "" "$DEPTH"

total=$(( ( 4 * (4**DEPTH - 1) ) / (4 - 1) ))
echo "Created '${NAME}/' — depth ${DEPTH}, ${total} folders total."
