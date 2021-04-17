#!/bin/bash
dir_atual=$(pwd)
echo -e '\e[7;103;30m=============================================\e[0m'
echo -e '\e[7;103;30m  Script de limpeza do Create React-App      \e[0m'
echo -e '\e[7;103;30m  v.2021.04.17.11.01                         \e[0m'
echo -e '\e[7;103;30m=============================================\e[0m'
echo -e '\e[7;103;30mDigite o nome do titulo da página:\e[0m'
read title
echo ''

# Deleta arquivos desnecessarios da public
cd $dir_atual/public
rm -f favicon.ico logo192.png logo512.png manifest.json robots.txt

echo -e '\e[30;48;5;82m>> Arquivos do diretorio public excluidos com sucesso:\e[0m'
echo -e '\e[38;5;1m   - favicon.ico\e[0m'
echo -e '\e[38;5;1m   - logo192.png\e[0m'
echo -e '\e[38;5;1m   - logo512.png\e[0m'
echo -e '\e[38;5;1m   - manifest.json\e[0m'
echo -e '\e[38;5;1m   - robots.txt\e[0m'


# Limpa o index da public
echo '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>'${title}'</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>' > index.html

echo ''
echo -e '\e[0;49;92m>> Arquivo public/index.html atualizado com sucesso.\e[0m'
echo ''


# Deleta arquivos desnecessarios da src
cd $dir_atual/src
rm -f App.css App.test.tsx index.css logo.svg reportWebVitals.ts setupTests.ts

echo -e '\e[30;48;5;82m>> Arquivos do diretorio src excluidos com sucesso:\e[0m'
echo -e '\e[38;5;1m   - App.css\e[0m'
echo -e '\e[38;5;1m   - App.test.tsx\e[0m'
echo -e '\e[38;5;1m   - index.css\e[0m'
echo -e '\e[38;5;1m   - logo.svg\e[0m'
echo -e '\e[38;5;1m   - reportWebVitals.ts\e[0m'
echo -e '\e[38;5;1m   - setupTests.ts\e[0m'

# Limpa conteudo desnecessarios do App.tsx
echo 'export function App() {
  return (
    <div className="App">
      <h1>Hello World</h1>
    </div>
  );
}' > App.tsx

echo ''
echo -e '\e[0;49;92m>> Arquivo src/App.tsx atualizado com sucesso.\e[0m'

# Limpa conteudo desnecessarios do index.tsx
echo "import React from 'react';
import ReactDOM from 'react-dom';
import { App } from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);" > index.tsx

echo -e '\e[0;49;92m>> Arquivo src/index.tsx atualizado com sucesso.\e[0m'
echo ''


echo -e '\e[30;48;5;82m !! Limpeza concluida com sucesso !! \e[0m'
sleep 5