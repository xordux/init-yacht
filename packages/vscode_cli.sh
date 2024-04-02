vscode_cli(){
    vscode_url="https://vscode.download.prss.microsoft.com/dbazure/download/stable/863d2581ecda6849923a2118d93a088b0745d9d6/vscode_cli_alpine_x64_cli.tar.gz"
    curl -OL $vscode_url && tar -xvf vscode_cli_alpine_x64_cli.tar.gz && sudo mv code /usr/local/bin/
    rm vscode_cli_alpine_x64_cli.tar.gz
}