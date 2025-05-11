Hooks.once("init", async function () {
    const supportedVersions = ["12", "13"];
    let currentVersion = game?.version?.split(".")[0];

    console.info("TOR2E Theme | Loading css for version", currentVersion);

    if (!supportedVersions.includes(currentVersion)) {
        currentVersion = supportedVersions.findLast(() => true);
        console.info("TOR2E Theme | Loading css for latest supported version", currentVersion);
    }

    const link = document.createElement("link");
    link.rel = "stylesheet";
    link.href = `modules/tor2e-theme/styles/v${currentVersion}/index.css`;
    document.head.appendChild(link);
});