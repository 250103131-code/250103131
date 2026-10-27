# GitHub-қа жүктеу нұсқаулығы (MacBook / IntelliJ IDEA)

## 1-нұсқа: GitHub сайты арқылы (ең оңай)

1. [github.com](https://github.com) сайтына кіріп, аккаунтыңа кір.
2. Жоғарғы жақтағы **+** -> **New repository** таңда.
3. Атауын `proxy-bridge-java-lab` деп қой. **Public** немесе мұғалім талап еткен түрін таңда.
4. **Add a README file** дегенді белгілеме (README осы жобада бар).
5. **Create repository** бас.
6. Жаңа репозиторийде **uploading an existing file** сілтемесін немесе **Add file > Upload files** батырмасын таңда.
7. ZIP-ті **ашып**, ішіндегі `src` бумасын, `.gitignore`, `README.md`, `run.sh`, `test.sh`, `expected-output.txt`, `GITHUB_GUIDE_KZ.md` файлдарын жүкте. **ZIP файлының өзін ғана жүктеме** — Java кодын GitHub ішінде жеке файл ретінде көрсету керек.
8. Төменде **Commit changes** бас.
9. Repository адресін мұғалімге жібер (мысалы, `https://github.com/USERNAME/proxy-bridge-java-lab`).

**Ескерту:** macOS Finder кейде `.gitignore` жасырын файлын көрсетпейді. Оны көру үшін **Command + Shift + .** бас. GitHub сайты арқылы жүктегенде папка құрылымы сақталғанын тексер.

## 2-нұсқа: Терминал арқылы (ұсынылады)

Алдымен GitHub-та бос `proxy-bridge-java-lab` репозиторийін жаса. Сосын Mac Terminal-да:

```bash
cd ~/Downloads/proxy-bridge-java-lab
git init
git add .
git commit -m "Complete six Proxy and Bridge pattern tasks"
git branch -M main
git remote add origin https://github.com/USERNAME/proxy-bridge-java-lab.git
git push -u origin main
```

`USERNAME` сөзін өз GitHub қолданушы атыңмен алмастыр. Егер папканы Downloads-тан басқа жерге ашсаң, `cd` командасындағы жолды өзгерт. GitHub пароль сұраса, браузер арқылы GitHub авторизациясын немесе Git Credential Manager-ді қолдан; аккаунт паролін Terminal-ға жай енгізу әдетте жұмыс істемейді.

## Мұғалімге қысқаша ағылшын тілінде қорғау

**Proxy Pattern:** "Proxy controls access to the real object. I used it to check the user role, count video views, and block websites. The real object is created only when it is needed."

**Bridge Pattern:** "Bridge separates the control from the device or weapon. I can add a SmartLight without changing the remote. I can also use the same Knight with different weapons."
