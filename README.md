# Create React App Cleaner
Esse script executa a limpeza de arquivos desnecessários no seu projeto react, deixando ainda mais rápido o seu processo de configuração.

### Arquivos excluídos:

- public/favicon.ico    
- public/logo192.png
- public/logo512.png
- public/manifest.json
- public/robots.txt
- src/App.css
- src/App.test.tsx
- src/index.css
- src/logo.svg
- src/reportWebVitals.ts
- src/setupTests.ts

### Arquivos atualizados:
- public/index.html
- src/App.tsx
- src/index.tsx

### public/index.html
```html
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>{titulo}</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>
```

### public/App.tsx
```tsx
export function App() {
  return (
    <div className="App">
      <h1>Hello World</h1>
    </div>
  );
}
```

### public/Index.tsx
```tsx
import React from 'react';
import ReactDOM from 'react-dom';
import { App } from './App';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);
```

## Usage
Logo após você rodar o comando do create react-app

### Exemplo
```sh
yarn create react-app seu-projeto --template typescript
```

> Se você estiver utilizando o windows de preferência execute no git-bash (Faça o download: https://git-scm.com/download/win)

Adicione o arquivo cra-cleaner.sh dentro do diretório do seu projeto react e execute-o.

Logo em seguida informe o título da página index e aperte enter

🎉 Pronto projeto limpo com sucesso!

## License

MIT
