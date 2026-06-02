#!/bin/sh

print_err() {
    printf "\n%s\n" "$*" >&2
}

check_cmd() {
    command_name="$1"

    if ! command -v "${command_name}" >/dev/null 2>&1; then
        print_err "Command not found: ${command_name}"
        return 1
    fi

    return 0
}

# Total CPU usage
if check_cmd "top"; then
    top -b -n1 | grep "Cpu(s)"
fi

# Total memory usage (Free vs Used including percentage)
if check_cmd "free"; then
    free -h
fi

# Total disk usage (Free vs Used including percentage)
if check_cmd "df"; then
    df -h
fi

# Top 5 processes by CPU usage
if check_cmd "ps"; then
    ps aux --sort=-%cpu | head -n 6
fi

# Top 5 processes by memory usage
if check_cmd "ps"; then
    ps aux --sort=-%mem | head -n 6
fi
