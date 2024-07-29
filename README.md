# Repository for guides.martysmods.com

## Documentation

* **Jekyll:** A simple, blog-aware static site generator. [Learn More](https://jekyllrb.com)
* **Just The Docs:** A modern, customizable, and responsive documentation theme for Jekyll. [Repository](https://github.com/just-the-docs/just-the-docs) | [Official Documentation](https://just-the-docs.com)
* **Markdown Extension - Kramdown:** An extension that provides a mixture of standard Markdown syntax with some special features. [Kramdown Reference](https://kramdown.gettalong.org/quickref.html#extensions)

---

## Setting Up Jekyll on Windows using RubyInstaller

1. **Dependencies:** Download and install [RubyInstaller 3.2.x Hyperlinked Here](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.2.5-1/rubyinstaller-devkit-3.2.5-1-x64.exe).
    * Opt for the `MSYS2 and MINGW development tool chain`.
2. **Environment:** Open CMD/Terminal to allow PATH environment changes.
    * Verify path via `path` in CMD.
    * Standard path: `PATH=C:\Ruby32-x64\bin;`.
3. **Installation:** Execute `gem install jekyll bundler`. This may take several minutes.
4. **Verification:** Use `jekyll -v` to check the installation. Restart your machine if any errors arise.

## Local Site Development

1. Clone the GitHub repository.
2. Navigate to the repository location via terminal/CMD.
3. Run `setup.bat`.
4. Run `launch.bat`.
5. Access the site at `http://localhost:4000`.

## Markdown Customization

Just The Docs leverages Kramdown combined with traditional Markdown for enhanced documentation and guide creation. Both the Kramdown reference and Just The Docs documentation offer comprehensive insights.

## Contributing Guide

1. Fork the repository on GitHub.
2. Work within the `/docs/` directory of the `:dev:` branch.
3. Once done, submit a pull request to the main `:dev:` branch.