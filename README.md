# notes

ISE notes

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/c04o/notes/ci.yml?branch=main&style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/c04o/notes?style=for-the-badge)
![Static Badge](https://img.shields.io/badge/Typst-grey?style=for-the-badge&logo=typst)
![Static Badge](https://img.shields.io/badge/Nix-grey?style=for-the-badge&logo=nixos)

> [!TIP]
> Actions deploys [the notes as PDF](https://c04o.github.io/notes/) every update
> to view/download

## Build from source

> [!IMPORTANT]
> [Nix](https://nixos.org/) is required for flake. Feel free to use whatever
> method

1. Clone the repository and navigate into the project folder

```bash
git clone https://github.com/c04o/notes.git ~/notes
cd ~/notes
```

2. Enter the development environment

```bash
nix develop
```

3. Run the compiler in watch mode

```bash
typst watch main.typ
```

> [!NOTE]
> This will continuously compile `main.typ` into `main.pdf` in real-time as you
> save changes

### Formatting

To format the Typst source code according to standard style guidelines, run:

```bash
typstyle format main.typ
```

## License

notes is licensed under the [Unlicense license](LICENSE)
