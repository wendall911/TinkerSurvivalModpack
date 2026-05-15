# TinkerSurvivalModpack — Project Context

## What This Is
The official CurseForge modpack for TinkerSurvival. Provides a curated experience built
around TinkerSurvival + SurvivalistEssentials (early-game TC progression, correct tool
use, TC materials and modifiers).

Published at: https://minecraft.curseforge.com/projects/tinkers-survival-official

## This Is Not a Minecraft Mod
This repository is a modpack, not a Java/Gradle mod. There is no `src/`, no `build.gradle`,
and no multi-loader structure.

## Build Tooling
Two tools are used:

**CFExporter** (https://github.com/Gaz492/CFExporter) — third-party CLI tool built locally.
Takes the modpack directory and produces a CurseForge-compatible export. Last release
July 2023, last code commit January 2022 — dormant upstream. Usage documentation is no
longer available. A suitable alternative should be evaluated for future modpacks.
```
./bin/CFExporter -d . -n "TinkersSurvivalOfficial" -v <version> -c build.json -o out/
```
Server zip:
```
zip -j out/TinkersSurvivalOfficial-<version>-server.zip server/*
```
`build.json` defines the Minecraft version, modloader, modloader version, and which
directories are included (`config`, `defaultconfigs`, `global_packs`, `scripts`).
Build output goes to `out/` (not `release/` as in SurvivalistEssentialsModpack).

**ModpackUpdater** — wendall911's own CLI tool (see `../ModpackUpdater`). Used for
updating mod files in the modpack.

## Current Version
- Minecraft: 1.19.2
- Modloader: Forge 43.3.13

Note: TinkerSurvival the mod is currently on 1.20.1. The modpack may lag behind the mod
version — modpacks require the full ecosystem to be updated, not just one mod.

## Branch Convention
Single main branch. No multi-version support — modpack tracks a single Minecraft version
at a time.

## Distribution
CurseForge only. Modpacks are CurseForge-only per workspace convention — no Modrinth.

## Release Process
Follow the standard wendall911 release process in
`../docs/minecraft/MINECRAFT_DEVELOPMENT_NOTES.md`.
