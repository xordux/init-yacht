vscode_cli(){
    vscode_url="https://vscode.download.prss.microsoft.com/dbazure/download/stable/2901c5ac6db8a986a5666c3af51ff804d05af0d4/vscode_cli_alpine_x64_cli.tar.gz"
    curl -OL $vscode_url && tar -xvf vscode_cli_alpine_x64_cli.tar.gz && sudo mv code /usr/local/bin/
    rm vscode_cli_alpine_x64_cli.tar.gz
}