# Infra Stats

![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![Shell](https://img.shields.io/badge/Shell-POSIX%20sh-blue.svg)

`infra-stats` is a small shell script that prints a quick snapshot of the current server:

1. CPU usage from `top`
2. Memory usage from `free -h`
3. Disk usage from `df -h`
4. Top 5 processes by CPU usage
5. Top 5 processes by memory usage

## Requirements

The script expects these standard Linux utilities to be available:

1. `top`
2. `free`
3. `df`
4. `ps`

## Run

From the repository root, run:

```sh
sh server-stats.sh
```

You can also make it executable and run it directly:

```sh
chmod +x server-stats.sh
./server-stats.sh
```

## Output

The script writes a compact, readable system summary to standard output. If one of the required commands is missing, it prints a message to standard error and skips that section.

## Repository Files

1. `server-stats.sh` - the stats collection script
2. `README.md` - project overview and usage
3. `LICENSE` - Apache 2.0 license text
4. `CHANGELOG.md` - release history
5. `CONTRIBUTING.md` - contribution guidance
6. `CODE_OF_CONDUCT.md` - community standards

## Contributing

Contributions are welcome. If you want to improve the script or documentation, open a pull request with a clear description of the change.

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
