

<!--<img src="https://github.com/oriondesign2015/SetupOrion/blob/main/src/Capa.png">-->
<img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/d0f2636b-ec0f-49ad-b0c4-233098f31c6b">

<!--<br><br>EM MANUTENÇÃO<br>-->
<br>
<p align="center">
  Esta é uma solução gratuita de Auto Instaladores, com o intuido de ajudar toda a comunidade a instalar as principais ferramentas do mercado de Automações/Marketing.
  <b>Você não precisa instalar todos, você poderá escolher qual das ferramentas você quer instalar.</b>
  Desenvolvido por <b>OrionDesign</b>. Ao utilizar o mesmo, de os créditos!
</p>

<!--
<p align="center">
    <a href="https://www.behance.net/oriondesign_oficial"><img src="https://github.com/oriondesign2015/SetupOrion/blob/main/src/behance.png" width="20%" style="margin-right: 150px;"></a>
    <a href="https://wa.me/+5511973052593"><img src="https://github.com/oriondesign2015/SetupOrion/blob/main/src/whatsapp.png" width="20%" style="margin-right: 150px;"></a>
    <a href="https://www.youtube.com/oriondesign_oficial"><img src="https://github.com/oriondesign2015/SetupOrion/blob/main/src/youtube.png" width="20%"></a>
</p>
<br>
-->
## ✨ Ferramentas

Com essa solução, você consegue instalar as seguintes ferramentas:
- ⚡ <b>Chatwoot</b> -------> v3.1.1
- ⚡ <b>Evolution API</b> ---> 1.5.4
- ⚡ <b>Typebot</b> ---------> New: Escolha a versão
- ⚡ <b>N8N</b> -------------> New: Escolha a versão
- ⚡ <b>Appsmith</b> -------> Latest

## 📌 Observação

- Recomendamos que use a VPS da <b>Contabo</b> ou <b>Hetnerz</b> com o sistema <b>Ubuntu 20.04 LST 64x</b>! Foi realizado teste de instalação das ferramentas multiplas vezes usando uma VPS da Contabo com 8Gb Ram + 4vCores + Ubuntu 20.04 LST 64x.
- Caso for utilizar outra VPS, verifique se as portas escolhidas na instalação estão abertas.
- Se tiver qualquer ferramenta na sua VPS em produção, realize Snapshot da sua VPS antes, para evitar eventuais problemas.
- Os dados preenchidos no instalação não são enviados para nenhum lugar!
- Ao solicitar ajuda com outros membros, esconda sempre os dados sensiveis da sua instalação (keys, pass, tokens..)
- Você não precisa de solicitar autorização para usar esse instalador em cursos e/ou videos, apenas de os creditos.
- Se após seguir todos os passos, verificar os videos de apoio e instruções de erros, não conseguir instalar alguma ferramenta, entre em contato comigo através do whatsapp [clicando aqui](https://wa.me/+5511973052593) (Diga seu nome, VPS que esta usando, descreva e mande fotos dos problemas que estão ocorrendo). 

## 💽 Instalação

Não são muitos passos para utilizar essa solução, mas é importante prestar atenção em cada detalhe para evitar ter dor de cabeça por eventuais problemas.

<p><b>1a-</b> Não tenho o <b>SetupOrion</b> na minha VPS:</p>

```
sudo apt upgrade -y && sudo apt update && sudo apt install -y git && git clone https://github.com/oriondesign2015/SetupOrion.git && cd SetupOrion && sudo chmod +x install.sh && ./install.sh
```

<p><b>1b-</b> Já tenho <b>SetupOrion</b> na minha VPS (para quem quer instalar outra aplicação):</p>

```
sudo apt upgrade -y && sudo apt update && cd SetupOrion && git stash && git pull && chmod +x install.sh && ./install.sh
```

<p><b>2-</b> Aguarde</p>
Ao pressionar <b>Enter</b>, o Auto Instalador começara a executar e instalar tudo que é necessario na sua maquina.

<p><b>3-</b> Escolha a/as ferramenta(s)</p>
Agora chegou a parte mais legal basta digitar o <b>NUMERO</b> da opção desejada, pressionar <b>Enter</b> para confirmar e deixar nosso instalador fazer o resto por você.

## 💡 Dicas/Soluções/Videos

Abaixo, deixarei as principais dicas, soluções e Videos de apoio, para que você consiga instalar qualquer ferramenta e corrigir eventuais erros.
Ainda em Desenvolvimento.

<details>
  <summary>⚡ <b>Chatwoot</b></summary>
  <img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/33efe0e2-12d6-4b19-ab72-7aa0363d9e40">
  <br>

  Este guia se destina para todos aqueles que desejam saber mais sobre como nosso instalador funciona e como utilizar as principais funções do Chatwoot

  <h2>Sobre o guia</h2><br>
  Para não poluir muito esse Git, eu estou deixando abaixo nossa Playlist exclusiva para Dicas e Soluções do Chatwoot, para que você consiga usar 100% do que essa incrivel ferramenta de multiatendimento tem a oferecer.<br><br>
  Link da Playlist:<br>
  👉 <a href="https://www.youtube.com/watch?v=mSDa8rVBoTU&list=PLRu7JPSKqaqDprqdCkhrFs0-HjxWVfiT_" target="_blank">https://www.youtube.com/watch?v=mSDa8rVBoTU&list=PLRu7JPSKqaqDprqdCkhrFs0-HjxWVfiT_</a>
<br>

  <h2>Conteudos da Playlist:</h2>
  <br>
  ✅ Instalando Chatwoot em sua VPS; <a href="https://youtu.be/mSDa8rVBoTU?si=spX0nBFIgP8H_A6r" target="_blank">(ver)</a><br>
  ✅ Personalizando Chatwoot | pt.1/2; <a href="https://youtu.be/_C6R-RQDAQI?si=otCflKJKze9ugtHi" target="_blank">(ver)</a><br>
  ✅ Personalizando Chatwoot | pt.2/2; <a href="https://youtu.be/r0F-bltPb2I?si=ZfKMLGs8LGkqt4Yo" target="_blank">(ver)</a><br>
  ❌ Conectando Whatsapp com Evolution API;<br>
  ❌ Conectando Email;<br>
  ❌ Conectando Site;<br>
  ❌ Criando novos Agentes;<br>
  ❌ Criando novas Empresas;<br>
  ❌ Criando Bots Avançados com Chatwoot + N8N + Evolution API;<br>
  ❌ Criando Bots com Typebot + Evolution + Chatwoot;<br>
  <br>

  <h2>Extras</h2>
  <details>
    <summary>📌 Personalização Chatwoot 1/2</summary>
    <img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/a3e8fcfb-41a2-452c-8300-4fe6d944a65d">
    <br>
    <b>Imagitipo:</b> (5120 x 1067px):<br>
    • LOGO<br>
    • LOGO_DARK<br>
    <br>
    <b>Isotipo:</b> (2133 x 2133px):<br>
    • LOGO_THUMBNAIL<br>
    <br>
    <b>Nome da empresa:</b><br>
    • INSTALLATION_NAME<br>
    • BRAND_NAME<br>
    <br>
    <b>Termos e politicas de privacidade:</b><br>
    • TERMS_URL<br>
    • PRIVACY_URL<br>
    <br>
    <b>Link do seu site:</b><br>
    • BRAND_URL<br>
    • WIDGET_BRAND_URL<br>
  </details>

  <details>
    <summary>📌 Personalização Chatwoot 2/2</summary>
    <img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/feb3b3eb-6b5a-4dd2-a833-38cdfeb2b2e1">
    <br>
    Comando para inciar a troca de logos:
    
    cd && cd SetupOrion && git pull && cd extra && chmod +x trocar_logos.sh && ./trocar_logos.sh
    
  Diretório dos SVG:
  
    /home/chatwoot/chatwoot/public/brand-assets/

  Reninciar Chatwoot:
  
    systemctl daemon-reload && systemctl restart chatwoot.target 

  Ferramenta para Converter em SVG Gratuito - Vectorizer:<br>
  • https://vectorizer.com/pt/

  Ferramenta para Converter em SVG Pago - Vector Magic:<br>
  • https://pt.vectormagic.com
    <br>
  </details>
  <hr/>
</details>

<details>
  <summary>⚡ <b>Evolution API</b></summary>
  <img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/67cfc5cb-cce9-42ea-b893-605fae187dd9">
  <br>

  Este guia se destina para todos aqueles que desejam saber mais sobre como nosso instalador funciona e como utilizar as principais funções da Evolution API

  <h2>Sobre o guia</h2><br>
  Para não poluir muito esse Git, eu estou deixando abaixo nossa Playlist exclusiva para Dicas e Soluções da Evolution API, para que você consiga usar 100% do que essa incrivel API tem a oferecer.<br><br>
  Link da Playlist:<br>
  👉 SEM LINK AINDA<br>
<br>

  <h2>Conteudos da Playlist:</h2>
  ✅ Como executar o SetupOrion;<br>
  ✅ Instalando Evolution API;<br>
  ❌ Conectando-se ao Manager;<br>
  ❌ Criando Instancias com Manager;<br>
  ❌ Configurando Instancias com Manager;<br>
  ❌ Conectando Webhook com Manager;<br>
  ❌ Conectando Chatwoot com Manager;<br>
  ❌ Conectando Typebot com Manager;<br>
  ❌ Conectando-se com Postman;<br>
  ❌ Criando Instancias com Postman;<br>
  ❌ Conectando Webhook com Postman;<br>
  ❌ Conectando Chatwoot com Postman;<br>
  ❌ Conectando Typebot com Postman;<br>
  ❌ Envio de mensagens com Postman;<br>
  ❌ Envio de mensagens para grupos com Postman;<br>
  ❌ Configurações de Perfil com Postman;<br>
  ❌ Entendendo API e usando ela em qualquer lugar;<br>
  <hr/>
</details>

<details>
  <summary>⚡ <b>N8N</b></summary>
  <img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/284160e6-15ac-4eca-a4cb-51f665a2ea86">
  <br>

  Este guia se destina para todos aqueles que desejam saber mais sobre como nosso instalador funciona e como utilizar as principais funções do N8N

  <h2>Sobre o guia</h2><br>
  Para não poluir muito esse Git, eu estou deixando abaixo nossa Playlist exclusiva para Dicas e Soluções do N8N, para que você consiga usar 100% do que essa incrivel ferramenta tem a oferecer.<br><br>
  Link da Playlist:<br>
  👉 SEM LINK AINDA<br>
<br>

  <h2>Conteudos da Playlist:</h2>
  ✅ Como executar o SetupOrion;<br>
  ❌ Instalando N8N;<br>

  <hr/>
</details>

<details>
  <summary>⚡ <b>Appsmith</b></summary>
  <img src="https://github.com/oriondesign2015/SetupOrion/assets/139019565/8e317067-d0f4-4be8-a8b1-16134e8faed0">
  <br>

  Este guia se destina para todos aqueles que desejam saber mais sobre como nosso instalador funciona e como utilizar as principais funções do Appsmith

  <h2>Sobre o guia</h2><br>
  Para não poluir muito esse Git, eu estou deixando abaixo nossa Playlist exclusiva para Dicas e Soluções do Appsmith, para que você consiga usar 100% do que essa plataforma tem a oferecer.<br><br>
  Link da Playlist:<br>
  👉 SEM LINK AINDA<br>
<br>

  <h2>Conteudos da Playlist:</h2>
  ✅ Como executar o SetupOrion;<br>
  ❌ Instalando Appsmith;<br>

  <hr/>
</details>

## 🚀 Como contribuir

Simples, se inscreva no meu canal [clicando aqui](https://www.youtube.com/oriondesign_oficial) ou mande um Feedback no meu [whatsApp](http://wa.me/+5511973052593), falando como foi instalar essas ferramentas usando nossa solução, passar bugs que ocorrerão e até ideias/novas ferramentas que você já estara contribuindo bastante com nossa solução! Se quiser contribuir financeiramente tambem, sinta-se a vontade para dar aquele cafezinho maroto via pix (CPF: 47967295854)

## ❤️ Agradecimentos/Creditos

Agradoço especialmente o <a href="https://github.com/DeividMs">Deivid Santos</a> por ter me ensinado e incentivado a usar o GitHub, alem de me ensinar muitas outras coisas do universo da programação.
Tambem meus agradecimentos para o pessoal da comunidade <a href="https://github.com/cwmkt">CWMKT</a> e <a href="https://evolution-api.com/opensource-whatsapp-api/">Evolution APi</a>.
<br><br><br>
Agora fique com Deus e um beijão do tio Wick<br><br>
<img src="https://media3.giphy.com/media/QAsBwSjx9zVKoGp9nr/giphy.gif?cid=ecf05e47bfvw8j6yjz5fjhzu9xfs67iew0pa6t1icg3014xv&ep=v1_gifs_trending&rid=giphy.gif&ct=g">

Todo conhecimento deve ser compartilhado!

> Entre em contato comigo através do WhatsApp [clicando aqui](http://wa.me/+5511973052593).

## ❤️ Colaboradores
Segue a lista (das melhores) pessoas a colaborar com nosso Git, seja com soluções, avisos de correções ou ajuda monetaria:
- <b>NESTOR DAVALOS</b>
- <b>EQUIPE CWMKT</b>
- <b>RAPHAEL - ASTRA ONLINE</b>
