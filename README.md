# Java Design Patterns Lab — Proxy & Bridge

**Assignment:** Lab Worksheet: Proxy & Bridge Patterns in Java  
**Technology:** Plain Java 17+ (no external libraries)  
**Entry point:** `src/Main.java`

This repository completes the **six exercises** from the provided lab worksheet. Each class is in its own Java file. The output matches the six expected console examples.

## Tasks

| No. | Pattern | Task | Main classes |
|---|---|---|---|
| 1 | Proxy | The Bouncer / protection | `ProxyImage`, `RealImage` |
| 2 | Proxy | The View Counter / logging | `ProxyVideo`, `RealVideo` |
| 3 | Proxy | School Wi-Fi Firewall | `SchoolProxyInternet`, `RealInternet` |
| 4 | Bridge | The New Machine / Smart Light | `SmartLight`, `AdvancedRemote` |
| 5 | Bridge | The New Button / Party Remote | `PartyRemote`, `Radio` |
| 6 | Bridge | RPG Game Weapon System | `Hero`, `Knight`, `Wizard`, `Sword`, `MagicWand` |

## How to run in IntelliJ IDEA

1. Open **IntelliJ IDEA** -> **File > Open** -> choose this project folder.
2. Set a Java SDK (JDK 17 or newer) under **File > Project Structure**, if requested.
3. If `src` is not marked as source code, right-click `src` -> **Mark Directory as > Sources Root**.
4. Open **`src/Main.java`** and click the green **Run** icon next to `main()`.
5. Compare the result with `expected-output.txt`.

## How to run in macOS Terminal

```bash
cd proxy-bridge-java-lab
bash run.sh
```

To verify every expected line automatically:

```bash
bash test.sh
```

The script uses only `javac`, `java`, `find`, and `diff`. No Maven or Gradle needed.

## Why these patterns are used

- **Proxy** has the same interface as the real object and controls access to it. We use it for permission checks, usage logs, blocking websites, and lazy loading.
- **Bridge** separates an abstraction from its implementation. `BasicRemote` holds a `Device` reference; `Hero` holds a `Weapon` reference. This lets us add new devices, remote controls, heroes, and weapons independently.

## Project structure

```text
proxy-bridge-java-lab/
├── src/
│   ├── Main.java
│   ├── proxy/
│   │   ├── Image.java, RealImage.java, ProxyImage.java
│   │   ├── Video.java, RealVideo.java, ProxyVideo.java
│   │   └── Internet.java, RealInternet.java, SchoolProxyInternet.java
│   ├── bridge/
│   │   ├── Device.java, SmartLight.java, Radio.java
│   │   └── BasicRemote.java, AdvancedRemote.java, PartyRemote.java
│   └── rpg/
│       ├── Weapon.java, Sword.java, MagicWand.java
│       └── Hero.java, Knight.java, Wizard.java
├── expected-output.txt
├── run.sh
├── test.sh
├── GITHUB_GUIDE_KZ.md
└── .gitignore
```

## Notes

- The assignment references earlier `ProxyImage`, `ProxyVideo`, `Device`, and remote classes; this repository includes all needed starter classes so it works independently.
- The `Wizard` class is implemented as required in Task 6. The `main()` demonstration uses two `Knight` objects to match the worksheet exactly.
- This is a console simulation. No image, video, internet, or physical smart devices are accessed.
