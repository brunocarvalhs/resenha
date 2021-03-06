<p align="center"><a href="https://github.com/brunocarvalhs/Resenha" target="_blank"><img src="https://github.com/brunocarvalhs/Resenha/blob/master/assets/images/logo.png" width="250"></a></p>

<p align="center">
    <a href="https://github.com/brunocarvalhs/Resenha/blob/master/LICENSE">
        <img src="https://img.shields.io/github/license/brunocarvalhs/Resenha" alt="License">
    </a>
    <a href="https://github.com/brunocarvalhs/Resenha/issues">
        <img src="https://img.shields.io/github/issues/brunocarvalhs/Resenha" alt="Issues">
    </a>
</p>

<p align="center">
    <a href="https://github.com/brunocarvalhs/Resenha/actions/workflows/build_release.yml">
        <img src="https://github.com/brunocarvalhs/Resenha/actions/workflows/build_release.yml/badge.svg" alt="Build Release">
    </a>
    <a href="https://github.com/brunocarvalhs/Resenha/actions/workflows/build_develop.yml">
        <img src="https://github.com/brunocarvalhs/Resenha/actions/workflows/build_develop.yml/badge.svg" alt="Build Develop">
    </a>
</p>

Inglês | [Português](/README_ptbr.md)

> As of now, this project is designed to only output builds for Android and iOS. Even though, given the current
> *stability* of Flutter SDK for desktop (Windows, Linux and macOS) and web, there is a high probability that this
> project will eventually support builds for all platforms.

This README is intended to guide how this project is structured and should serve as a guide to help scale the project with
current and future requirements. Think of it as a map and flexible rules that guide design decisions. While
they can (and probably will) change over time, discussions must be raised to trigger such changes: this means that
let's think/question ourselves before taking an action that breaks any rational decision made here.

## About
Resenha's demand is for groups of people who need a tool for organizing events in private groups, with the greatest ease and patricity, based on the phrase, "If it were agreed, it wouldn't happen", with Resenha it would happen.

 - [Layout Figma](https://www.figma.com/file/tUmdLBPJVtOdR9hhtAjeBx/Resenha?node-id=3%3A410)

## Setup
If you have no idea how to install Flutter and run it locally, check this
[_Get started_](https://flutter.dev/docs/get-started/install).

If you have Flutter setup locally, on the project's root folder, install pubspec dependencies by running
`flutter pub get`.

## Architecture
How this application works from inside and how it interacts with external dependencies - written in details in 
[ARCHITECTURE.md](ARCHITECTURE.md).

## Contributing
See [CONTRIBUTING](CONTRIBUTING.md) for details about how to contribute to the project.

## License
Resenha is published under [BSD 3-Clause](LICENSE).
