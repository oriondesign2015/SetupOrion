<img src="https://github.com/user-attachments/assets/f1381a28-79e2-4fea-984c-4440476cdcc2" alt="SetupOrion">

<p align="center">
  Este Auto instalador é uma solução <b>100% gratuita</b>, com o intuito de ajudar toda a comunidade a instalar as principais ferramentas do mercado de Automações/Marketing em seu servidor.
  <b>Você não precisa instalar todos os programas contidos no mesmo, pois você poderá escolher qual das ferramentas você quer instalar.</b>
  Desenvolvido por <b>OrionDesign</b>. Ao utilizar o mesmo, <b>dê os créditos</b>!
</p>

---

<h3>📌 Observações e Recomendações</h3>

- Recomendamos usar a VPS da **Hostinger**, **Hetzner**, **Digital Ocean** ou **AWS**. NÃO recomendamos e nem encorajamos usar outras VPS.
- **O Servidor precisa estar vazio** para efetuar a instalação das ferramentas. Executar o Setup com outras ferramentas pode acarretar na perda dos dados.
- Recomenda-se utilizar **Debian 12**, com **mínimo de 4Gb e 2vCPU**. É necessário analisar os requisitos de cada aplicação que for instalar.

---

<h3>💿 Como executar o instalador</h3>
<p>Pensando em deixar a instalação das ferramentas o mais fácil possível, criamos um código curto que vai atualizar o seu servidor, baixar o script do setup e executar o mesmo. Tudo para que qualquer um consiga usá-lo.</p>

<p>Basta executar esse código no terminal do seu servidor:</p>

```
bash <(curl -sSL get.setuporion.sh)
```
<p>Após isso basta aguardar alguns instantes enquanto o script é iniciado e por fim, instalar as ferramentas que desejar.</p>

---

<h3>💜 Apoie o projeto</h3>
<p>O SetupOrion é <b>100% gratuito</b>. Se ele te ajudou, você pode contribuir com o projeto de duas formas:</p>

- **🖥️ Hostinger:** assine qualquer VPS pelo nosso link e contribua diretamente com o projeto. Use o cupom **ORION** e ainda ganhe **10% de desconto**.<br>
  🔗 [https://hostinger.com/orion](https://hostinger.com/orion)

- **🚀 ClubOrion:** vire membro da nossa comunidade e apoie o projeto financeiramente. Você ainda entra no nosso grupo privado do WhatsApp, tem acesso à plataforma com vídeos avulsos e participa de 2 meets por mês.<br>
  🔗 [https://orionacademy.com.br/courses/cluborion](https://orionacademy.com.br/courses/cluborion)

---

<h3>🧰 Ferramentas disponíveis</h3>
<p>O SetupOrion instala mais de 100 ferramentas, organizadas por categoria abaixo. Você escolhe no menu do instalador apenas as que quiser usar. Em cada uma, clique no ícone 🔗 para abrir o repositório oficial e conhecer o projeto.</p>

<h4>🏗️ Infraestrutura e Monitoramento</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Traefik</b></td>
    <td>Proxy reverso e balanceador de carga com SSL automático (Let's Encrypt)</td>
    <td align="center"><a href="https://github.com/traefik/traefik">🔗</a></td>
  </tr>
  <tr>
    <td><b>Portainer</b></td>
    <td>Painel visual para gerenciar containers Docker e Docker Swarm</td>
    <td align="center"><a href="https://github.com/portainer/portainer">🔗</a></td>
  </tr>
  <tr>
    <td><b>MinIO</b></td>
    <td>Armazenamento de objetos compatível com Amazon S3</td>
    <td align="center"><a href="https://github.com/minio/minio">🔗</a></td>
  </tr>
  <tr>
    <td><b>RustDesk</b></td>
    <td>Acesso remoto, alternativa ao TeamViewer, com servidor próprio</td>
    <td align="center"><a href="https://github.com/rustdesk/rustdesk-server">🔗</a></td>
  </tr>
  <tr>
    <td><b>Code Server</b></td>
    <td>VS Code rodando no navegador</td>
    <td align="center"><a href="https://github.com/coder/code-server">🔗</a></td>
  </tr>
  <tr>
    <td><b>Grafana</b></td>
    <td>Dashboards e visualização de métricas e logs</td>
    <td align="center"><a href="https://github.com/grafana/grafana">🔗</a></td>
  </tr>
  <tr>
    <td><b>Prometheus</b></td>
    <td>Coleta e armazenamento de métricas e alertas</td>
    <td align="center"><a href="https://github.com/prometheus/prometheus">🔗</a></td>
  </tr>
  <tr>
    <td><b>cAdvisor</b></td>
    <td>Métricas de uso de recursos dos containers Docker</td>
    <td align="center"><a href="https://github.com/google/cadvisor">🔗</a></td>
  </tr>
  <tr>
    <td><b>Uptime Kuma</b></td>
    <td>Monitoramento de disponibilidade de sites e serviços com alertas</td>
    <td align="center"><a href="https://github.com/louislam/uptime-kuma">🔗</a></td>
  </tr>
  <tr>
    <td><b>Checkmate</b></td>
    <td>Monitoramento de servidores e disponibilidade com alertas</td>
    <td align="center"><a href="https://github.com/bluewave-labs/Checkmate">🔗</a></td>
  </tr>
  <tr>
    <td><b>Ntfy</b></td>
    <td>Envio de notificações push via HTTP para celular e desktop</td>
    <td align="center"><a href="https://github.com/binwiederhier/ntfy">🔗</a></td>
  </tr>
  <tr>
    <td><b>NetBox</b></td>
    <td>Gestão de infraestrutura de rede, IPAM e DCIM</td>
    <td align="center"><a href="https://github.com/netbox-community/netbox">🔗</a></td>
  </tr>
  <tr>
    <td><b>Duplicati</b></td>
    <td>Backup criptografado para nuvem e armazenamento externo</td>
    <td align="center"><a href="https://github.com/duplicati/duplicati">🔗</a></td>
  </tr>
  <tr>
    <td><b>PgBackWeb</b></td>
    <td>Backups agendados de bancos PostgreSQL com interface web</td>
    <td align="center"><a href="https://github.com/eduardolat/pgbackweb">🔗</a></td>
  </tr>
  <tr>
    <td><b>ZeroByte</b></td>
    <td>Automação de backups para self-hosters, baseada em restic</td>
    <td align="center"><a href="https://github.com/nicotsx/zerobyte">🔗</a></td>
  </tr>
</table>

<h4>🗄️ Bancos de Dados e Dados</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>MongoDB</b></td>
    <td>Banco de dados NoSQL orientado a documentos</td>
    <td align="center"><a href="https://github.com/mongodb/mongo">🔗</a></td>
  </tr>
  <tr>
    <td><b>RabbitMQ</b></td>
    <td>Servidor de mensageria e filas (message broker)</td>
    <td align="center"><a href="https://github.com/rabbitmq/rabbitmq-server">🔗</a></td>
  </tr>
  <tr>
    <td><b>Qdrant</b></td>
    <td>Banco de dados vetorial para busca semântica e IA</td>
    <td align="center"><a href="https://github.com/qdrant/qdrant">🔗</a></td>
  </tr>
  <tr>
    <td><b>ClickHouse</b></td>
    <td>Banco de dados colunar para análises em alta velocidade</td>
    <td align="center"><a href="https://github.com/ClickHouse/ClickHouse">🔗</a></td>
  </tr>
  <tr>
    <td><b>RedisInsight</b></td>
    <td>Interface gráfica para explorar e administrar o Redis</td>
    <td align="center"><a href="https://github.com/redis/RedisInsight">🔗</a></td>
  </tr>
  <tr>
    <td><b>PgAdmin 4</b></td>
    <td>Interface web para administrar bancos PostgreSQL</td>
    <td align="center"><a href="https://github.com/pgadmin-org/pgadmin4">🔗</a></td>
  </tr>
  <tr>
    <td><b>PhpMyAdmin</b></td>
    <td>Interface web para administrar bancos MySQL/MariaDB</td>
    <td align="center"><a href="https://github.com/phpmyadmin/phpmyadmin">🔗</a></td>
  </tr>
  <tr>
    <td><b>Kafka</b></td>
    <td>Plataforma de streaming de eventos distribuída, com interface Kafka UI</td>
    <td align="center"><a href="https://github.com/apache/kafka">🔗</a></td>
  </tr>
  <tr>
    <td><b>Metabase</b></td>
    <td>Business intelligence com dashboards e consultas sem código</td>
    <td align="center"><a href="https://github.com/metabase/metabase">🔗</a></td>
  </tr>
  <tr>
    <td><b>Baserow</b></td>
    <td>Banco de dados no-code estilo planilha, alternativa ao Airtable</td>
    <td align="center"><a href="https://github.com/baserow/baserow">🔗</a></td>
  </tr>
  <tr>
    <td><b>NocoDB</b></td>
    <td>Transforma bancos de dados em planilha colaborativa, alternativa ao Airtable</td>
    <td align="center"><a href="https://github.com/nocodb/nocodb">🔗</a></td>
  </tr>
  <tr>
    <td><b>Nocobase</b></td>
    <td>Plataforma no-code/low-code extensível para criar sistemas e apps</td>
    <td align="center"><a href="https://github.com/nocobase/nocobase">🔗</a></td>
  </tr>
  <tr>
    <td><b>Directus</b></td>
    <td>CMS headless e API instantânea sobre bancos de dados SQL</td>
    <td align="center"><a href="https://github.com/directus/directus">🔗</a></td>
  </tr>
  <tr>
    <td><b>Strapi</b></td>
    <td>CMS headless para criar e gerenciar APIs de conteúdo</td>
    <td align="center"><a href="https://github.com/strapi/strapi">🔗</a></td>
  </tr>
  <tr>
    <td><b>Supabase</b></td>
    <td>Backend completo com Postgres, autenticação, storage e APIs, alternativa ao Firebase</td>
    <td align="center"><a href="https://github.com/supabase/supabase">🔗</a></td>
  </tr>
</table>

<h4>💬 WhatsApp e Atendimento</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Chatwoot</b></td>
    <td>Plataforma de atendimento omnichannel (WhatsApp, e-mail, chat e redes sociais)</td>
    <td align="center"><a href="https://github.com/chatwoot/chatwoot">🔗</a></td>
  </tr>
  <tr>
    <td><b>Chatwoot Mega</b></td>
    <td>Versão personalizada do Chatwoot com recursos extras</td>
    <td align="center"><a href="https://github.com/chatwoot/chatwoot">🔗</a></td>
  </tr>
  <tr>
    <td><b>Evolution API</b></td>
    <td>API de WhatsApp para integrar mensagens a sistemas e automações</td>
    <td align="center"><a href="https://github.com/evolution-foundation/evolution-api">🔗</a></td>
  </tr>
  <tr>
    <td><b>Evolution GO</b></td>
    <td>Versão em Go da Evolution API para WhatsApp, mais leve e rápida</td>
    <td align="center"><a href="https://github.com/evolution-foundation/evolution-go">🔗</a></td>
  </tr>
  <tr>
    <td><b>Uno API</b></td>
    <td>API não oficial no formato da WhatsApp Cloud API, para conectar o WhatsApp a sistemas</td>
    <td align="center"><a href="https://github.com/clairton/unoapi-cloud">🔗</a></td>
  </tr>
  <tr>
    <td><b>Quepasa API</b></td>
    <td>API de WhatsApp para envio e recebimento de mensagens</td>
    <td align="center"><a href="https://hub.docker.com/r/codeleaks/quepasa">🔗</a></td>
  </tr>
  <tr>
    <td><b>N8N + Nodes Quepasa</b></td>
    <td>N8N já com os nodes da Quepasa API instalados</td>
    <td align="center"><a href="https://github.com/n8n-io/n8n">🔗</a></td>
  </tr>
  <tr>
    <td><b>Wuzapi</b></td>
    <td>API REST de WhatsApp multi-sessão</td>
    <td align="center"><a href="https://github.com/asternic/wuzapi">🔗</a></td>
  </tr>
  <tr>
    <td><b>WppConnect</b></td>
    <td>Servidor de API para automação de WhatsApp</td>
    <td align="center"><a href="https://github.com/wppconnect-team/wppconnect-server">🔗</a></td>
  </tr>
  <tr>
    <td><b>Transcreve Zap</b></td>
    <td>Transcrição e resumo automático de áudios do WhatsApp</td>
    <td align="center"><a href="https://github.com/impacte-ai/transcrevezap">🔗</a></td>
  </tr>
  <tr>
    <td><b>AstraCampaign</b></td>
    <td>Plataforma de campanhas em massa no WhatsApp com IA e multiempresa</td>
    <td align="center"><a href="https://github.com/AstraOnlineWeb/astracampaign">🔗</a></td>
  </tr>
</table>

<h4>📈 CRM, Marketing e Agendamento</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Woofed CRM</b></td>
    <td>CRM com funil de vendas e integração com atendimento</td>
    <td align="center"><a href="https://github.com/douglara/woofed-crm">🔗</a></td>
  </tr>
  <tr>
    <td><b>TwentyCRM</b></td>
    <td>CRM moderno open source, alternativa ao Salesforce</td>
    <td align="center"><a href="https://github.com/twentyhq/twenty">🔗</a></td>
  </tr>
  <tr>
    <td><b>Krayin CRM</b></td>
    <td>CRM open source baseado em Laravel</td>
    <td align="center"><a href="https://github.com/krayin/laravel-crm">🔗</a></td>
  </tr>
  <tr>
    <td><b>EvoCRM</b></td>
    <td>CRM da Evolution com atendimento, agentes de IA e automações</td>
    <td align="center"><a href="https://github.com/evolution-foundation/evo-crm-community">🔗</a></td>
  </tr>
  <tr>
    <td><b>Mautic</b></td>
    <td>Automação de marketing e e-mail marketing</td>
    <td align="center"><a href="https://github.com/mautic/mautic">🔗</a></td>
  </tr>
  <tr>
    <td><b>Odoo</b></td>
    <td>ERP completo com CRM, vendas, estoque e financeiro</td>
    <td align="center"><a href="https://github.com/odoo/odoo">🔗</a></td>
  </tr>
  <tr>
    <td><b>Frappe</b></td>
    <td>Framework e ERP (ERPNext) para gestão empresarial</td>
    <td align="center"><a href="https://github.com/frappe/erpnext">🔗</a></td>
  </tr>
  <tr>
    <td><b>Formbricks</b></td>
    <td>Pesquisas, formulários e coleta de feedback de usuários</td>
    <td align="center"><a href="https://github.com/formbricks/formbricks">🔗</a></td>
  </tr>
  <tr>
    <td><b>Heyform</b></td>
    <td>Construtor de formulários e pesquisas conversacionais</td>
    <td align="center"><a href="https://github.com/heyform/heyform">🔗</a></td>
  </tr>
  <tr>
    <td><b>Cal.com</b></td>
    <td>Agendamento de reuniões, alternativa ao Calendly</td>
    <td align="center"><a href="https://github.com/calcom/cal.com">🔗</a></td>
  </tr>
  <tr>
    <td><b>Easy!Appointments</b></td>
    <td>Agendamento online de serviços e compromissos</td>
    <td align="center"><a href="https://github.com/alextselegidis/easyappointments">🔗</a></td>
  </tr>
</table>

<h4>🤖 Automação e Inteligência Artificial</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>N8N</b></td>
    <td>Automação de fluxos de trabalho com centenas de integrações</td>
    <td align="center"><a href="https://github.com/n8n-io/n8n">🔗</a></td>
  </tr>
  <tr>
    <td><b>ActivePieces</b></td>
    <td>Automação de fluxos sem código, alternativa ao Zapier</td>
    <td align="center"><a href="https://github.com/activepieces/activepieces">🔗</a></td>
  </tr>
  <tr>
    <td><b>Flowise</b></td>
    <td>Construtor visual de fluxos e agentes de IA com LLMs</td>
    <td align="center"><a href="https://github.com/FlowiseAI/Flowise">🔗</a></td>
  </tr>
  <tr>
    <td><b>Typebot</b></td>
    <td>Construtor visual de chatbots e fluxos de conversa</td>
    <td align="center"><a href="https://github.com/baptisteArno/typebot.io">🔗</a></td>
  </tr>
  <tr>
    <td><b>Botpress</b></td>
    <td>Plataforma para criar chatbots e agentes de IA conversacionais</td>
    <td align="center"><a href="https://github.com/botpress/botpress">🔗</a></td>
  </tr>
  <tr>
    <td><b>Dify AI</b></td>
    <td>Plataforma para criar aplicações e agentes de IA generativa</td>
    <td align="center"><a href="https://github.com/langgenius/dify">🔗</a></td>
  </tr>
  <tr>
    <td><b>Ollama</b></td>
    <td>Executa modelos de linguagem (LLMs) localmente, com Open WebUI</td>
    <td align="center"><a href="https://github.com/ollama/ollama">🔗</a></td>
  </tr>
  <tr>
    <td><b>LangFlow</b></td>
    <td>Construtor visual de fluxos de IA e agentes com LLMs</td>
    <td align="center"><a href="https://github.com/langflow-ai/langflow">🔗</a></td>
  </tr>
  <tr>
    <td><b>Langfuse</b></td>
    <td>Observabilidade, rastreamento e métricas para aplicações com LLMs</td>
    <td align="center"><a href="https://github.com/langfuse/langfuse">🔗</a></td>
  </tr>
  <tr>
    <td><b>ZEP</b></td>
    <td>Memória de longo prazo para agentes e assistentes de IA</td>
    <td align="center"><a href="https://github.com/getzep/zep">🔗</a></td>
  </tr>
  <tr>
    <td><b>Anything LLM</b></td>
    <td>Chat com seus documentos usando qualquer LLM, com RAG</td>
    <td align="center"><a href="https://github.com/Mintplex-Labs/anything-llm">🔗</a></td>
  </tr>
  <tr>
    <td><b>Evo AI</b></td>
    <td>Plataforma para criar e gerenciar agentes de IA</td>
    <td align="center"><a href="https://github.com/evolution-foundation/evo-ai">🔗</a></td>
  </tr>
  <tr>
    <td><b>Firecrawl</b></td>
    <td>Extrai e converte sites em dados prontos para IA (web scraping)</td>
    <td align="center"><a href="https://github.com/firecrawl/firecrawl">🔗</a></td>
  </tr>
  <tr>
    <td><b>Browserless</b></td>
    <td>Navegador Chrome headless via API para automação e scraping</td>
    <td align="center"><a href="https://github.com/browserless/browserless">🔗</a></td>
  </tr>
  <tr>
    <td><b>Bolt</b></td>
    <td>Ambiente de IA para gerar e editar aplicações web (bolt.diy)</td>
    <td align="center"><a href="https://github.com/stackblitz-labs/bolt.diy">🔗</a></td>
  </tr>
</table>

<h4>🧩 Low-code e Desenvolvimento</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Appsmith</b></td>
    <td>Plataforma low-code para criar painéis e ferramentas internas</td>
    <td align="center"><a href="https://github.com/appsmithorg/appsmith">🔗</a></td>
  </tr>
  <tr>
    <td><b>LowCoder</b></td>
    <td>Plataforma low-code para criar aplicações e painéis</td>
    <td align="center"><a href="https://github.com/lowcoder-org/lowcoder">🔗</a></td>
  </tr>
  <tr>
    <td><b>ToolJet</b></td>
    <td>Plataforma low-code para criar aplicações e automações internas</td>
    <td align="center"><a href="https://github.com/ToolJet/ToolJet">🔗</a></td>
  </tr>
  <tr>
    <td><b>Hoppscotch</b></td>
    <td>Cliente de APIs para testar requisições, alternativa ao Postman</td>
    <td align="center"><a href="https://github.com/hoppscotch/hoppscotch">🔗</a></td>
  </tr>
  <tr>
    <td><b>Wordpress</b></td>
    <td>Sistema de gerenciamento de conteúdo para sites, blogs e lojas</td>
    <td align="center"><a href="https://github.com/WordPress/WordPress">🔗</a></td>
  </tr>
</table>

<h4>👥 Produtividade e Colaboração</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Mattermost</b></td>
    <td>Chat de equipe e colaboração, alternativa ao Slack</td>
    <td align="center"><a href="https://github.com/mattermost/mattermost">🔗</a></td>
  </tr>
  <tr>
    <td><b>Focalboard</b></td>
    <td>Quadros kanban para gestão de tarefas, alternativa ao Trello</td>
    <td align="center"><a href="https://github.com/mattermost-community/focalboard">🔗</a></td>
  </tr>
  <tr>
    <td><b>Planka</b></td>
    <td>Quadros kanban colaborativos em tempo real</td>
    <td align="center"><a href="https://github.com/plankanban/planka">🔗</a></td>
  </tr>
  <tr>
    <td><b>Wekan</b></td>
    <td>Quadros kanban open source, alternativa ao Trello</td>
    <td align="center"><a href="https://github.com/wekan/wekan">🔗</a></td>
  </tr>
  <tr>
    <td><b>OpenProject</b></td>
    <td>Gestão de projetos, tarefas e cronogramas</td>
    <td align="center"><a href="https://github.com/opf/openproject">🔗</a></td>
  </tr>
  <tr>
    <td><b>Outline</b></td>
    <td>Base de conhecimento e wiki colaborativa para equipes</td>
    <td align="center"><a href="https://github.com/outline/outline">🔗</a></td>
  </tr>
  <tr>
    <td><b>Affine</b></td>
    <td>Workspace de notas, documentos e quadros brancos, alternativa ao Notion</td>
    <td align="center"><a href="https://github.com/toeverything/AFFiNE">🔗</a></td>
  </tr>
  <tr>
    <td><b>Docmost</b></td>
    <td>Wiki e documentação colaborativa para equipes</td>
    <td align="center"><a href="https://github.com/docmost/docmost">🔗</a></td>
  </tr>
  <tr>
    <td><b>Wiki.js</b></td>
    <td>Wiki moderna e poderosa para documentação</td>
    <td align="center"><a href="https://github.com/requarks/wiki">🔗</a></td>
  </tr>
  <tr>
    <td><b>WiseMapping</b></td>
    <td>Editor de mapas mentais colaborativo</td>
    <td align="center"><a href="https://github.com/wisemapping/wisemapping-open-source">🔗</a></td>
  </tr>
  <tr>
    <td><b>Excalidraw</b></td>
    <td>Quadro branco virtual para desenhos e diagramas</td>
    <td align="center"><a href="https://github.com/excalidraw/excalidraw">🔗</a></td>
  </tr>
  <tr>
    <td><b>NextCloud</b></td>
    <td>Nuvem privada para arquivos, calendário e colaboração</td>
    <td align="center"><a href="https://github.com/nextcloud/server">🔗</a></td>
  </tr>
  <tr>
    <td><b>HumHub</b></td>
    <td>Rede social corporativa e plataforma de comunidades</td>
    <td align="center"><a href="https://github.com/humhub/humhub">🔗</a></td>
  </tr>
  <tr>
    <td><b>GLPI</b></td>
    <td>Gestão de ativos de TI e central de chamados (Service Desk)</td>
    <td align="center"><a href="https://github.com/glpi-project/glpi">🔗</a></td>
  </tr>
  <tr>
    <td><b>Papra</b></td>
    <td>Gerenciamento e arquivamento de documentos</td>
    <td align="center"><a href="https://github.com/papra-hq/papra">🔗</a></td>
  </tr>
  <tr>
    <td><b>Jitsi Meet</b></td>
    <td>Videoconferência open source</td>
    <td align="center"><a href="https://github.com/jitsi/jitsi-meet">🔗</a></td>
  </tr>
</table>

<h4>📄 Documentos e Assinaturas</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Docuseal</b></td>
    <td>Assinatura eletrônica de documentos, alternativa ao DocuSign</td>
    <td align="center"><a href="https://github.com/docusealco/docuseal">🔗</a></td>
  </tr>
  <tr>
    <td><b>Documenso</b></td>
    <td>Assinatura digital de documentos, alternativa ao DocuSign</td>
    <td align="center"><a href="https://github.com/documenso/documenso">🔗</a></td>
  </tr>
  <tr>
    <td><b>OpenSign</b></td>
    <td>Assinatura eletrônica de documentos</td>
    <td align="center"><a href="https://github.com/OpenSignLabs/OpenSign">🔗</a></td>
  </tr>
  <tr>
    <td><b>Stirling PDF</b></td>
    <td>Ferramentas para editar, converter e manipular PDFs</td>
    <td align="center"><a href="https://github.com/Stirling-Tools/Stirling-PDF">🔗</a></td>
  </tr>
  <tr>
    <td><b>Gotenberg</b></td>
    <td>API para converter documentos e páginas web em PDF</td>
    <td align="center"><a href="https://github.com/gotenberg/gotenberg">🔗</a></td>
  </tr>
  <tr>
    <td><b>OmniTools</b></td>
    <td>Coleção de ferramentas utilitárias online para o dia a dia</td>
    <td align="center"><a href="https://github.com/iib0011/omni-tools">🔗</a></td>
  </tr>
</table>

<h4>🔐 Segurança e Identidade</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>VaultWarden</b></td>
    <td>Gerenciador de senhas compatível com Bitwarden</td>
    <td align="center"><a href="https://github.com/dani-garcia/vaultwarden">🔗</a></td>
  </tr>
  <tr>
    <td><b>Passbolt</b></td>
    <td>Gerenciador de senhas para equipes</td>
    <td align="center"><a href="https://github.com/passbolt/passbolt_api">🔗</a></td>
  </tr>
  <tr>
    <td><b>Keycloak</b></td>
    <td>Gerenciamento de identidade e acesso (SSO)</td>
    <td align="center"><a href="https://github.com/keycloak/keycloak">🔗</a></td>
  </tr>
  <tr>
    <td><b>Authentik</b></td>
    <td>Provedor de identidade e SSO</td>
    <td align="center"><a href="https://github.com/goauthentik/authentik">🔗</a></td>
  </tr>
</table>

<h4>🔗 Links, SEO e Outros</h4>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Yourls</b></td>
    <td>Encurtador de links com estatísticas, hospedado por você</td>
    <td align="center"><a href="https://github.com/YOURLS/YOURLS">🔗</a></td>
  </tr>
  <tr>
    <td><b>Shlink</b></td>
    <td>Encurtador de URLs com estatísticas e API</td>
    <td align="center"><a href="https://github.com/shlinkio/shlink">🔗</a></td>
  </tr>
  <tr>
    <td><b>SerpBear</b></td>
    <td>Monitoramento de posições no Google (rank tracking de SEO)</td>
    <td align="center"><a href="https://github.com/towfiqi/serpbear">🔗</a></td>
  </tr>
  <tr>
    <td><b>AzuraCast</b></td>
    <td>Gerenciador de rádio web com streaming e playlists</td>
    <td align="center"><a href="https://github.com/AzuraCast/AzuraCast">🔗</a></td>
  </tr>
  <tr>
    <td><b>Traccar</b></td>
    <td>Plataforma de rastreamento GPS e gestão de frotas</td>
    <td align="center"><a href="https://github.com/traccar/traccar">🔗</a></td>
  </tr>
</table>

<h4>⌨️ Comandos Ocultos</h4>

<p>Ferramentas que não aparecem na lista do menu. Para instalar, digite o comando indicado no menu do instalador.</p>

<table width="100%">
  <tr>
    <th width="190" align="left">Ferramenta</th>
    <th width="570" align="left">Descrição</th>
    <th width="70" align="center">Link</th>
  </tr>
  <tr>
    <td><b>Postgres</b><br><code>postgres</code></td>
    <td>Banco de dados relacional PostgreSQL, instalado como stack independente</td>
    <td align="center"><a href="https://github.com/postgres/postgres">🔗</a></td>
  </tr>
  <tr>
    <td><b>PgVector</b><br><code>pgvector</code></td>
    <td>PostgreSQL com a extensão pgvector para busca vetorial e IA</td>
    <td align="center"><a href="https://github.com/pgvector/pgvector">🔗</a></td>
  </tr>
  <tr>
    <td><b>Redis</b><br><code>redis</code></td>
    <td>Banco de dados em memória para cache, filas e sessões</td>
    <td align="center"><a href="https://github.com/redis/redis">🔗</a></td>
  </tr>
  <tr>
    <td><b>MySQL</b><br><code>mysql</code></td>
    <td>Banco de dados relacional MySQL (Percona Server)</td>
    <td align="center"><a href="https://github.com/percona/percona-server">🔗</a></td>
  </tr>
  <tr>
    <td><b>Evolution v1</b><br><code>evolution.v1</code></td>
    <td>Evolution API versão 1.8+ para WhatsApp</td>
    <td align="center"><a href="https://github.com/evolution-foundation/evolution-api">🔗</a></td>
  </tr>
  <tr>
    <td><b>Evolution Lite</b><br><code>evolution.lite</code></td>
    <td>Versão leve da Evolution API para WhatsApp</td>
    <td align="center"><a href="https://github.com/evolution-foundation/evolution-api-lite">🔗</a></td>
  </tr>
  <tr>
    <td><b>N8N MCP</b><br><code>n8n.mcp</code></td>
    <td>N8N dedicado ao endpoint MCP para conectar agentes de IA</td>
    <td align="center"><a href="https://github.com/n8n-io/n8n">🔗</a></td>
  </tr>
  <tr>
    <td><b>Open WebUI</b><br><code>openwebui</code></td>
    <td>Interface web para conversar com modelos de IA (Ollama e APIs compatíveis)</td>
    <td align="center"><a href="https://github.com/open-webui/open-webui">🔗</a></td>
  </tr>
  <tr>
    <td><b>CTOP</b><br><code>ctop</code></td>
    <td>Monitor de containers no terminal, estilo top</td>
    <td align="center"><a href="https://github.com/bcicen/ctop">🔗</a></td>
  </tr>
  <tr>
    <td><b>HTOP</b><br><code>htop</code></td>
    <td>Monitor interativo de processos e recursos do servidor</td>
    <td align="center"><a href="https://github.com/htop-dev/htop">🔗</a></td>
  </tr>
</table>

<h4>🛠️ Comandos de Gerenciamento</h4>

<p>Comandos para manutenção e ajustes. Basta digitá-los no menu do instalador.</p>

<table width="100%">
  <tr>
    <th width="250" align="left">Comando</th>
    <th width="580" align="left">Descrição</th>
  </tr>
  <tr>
    <td><code>portainer.restart</code></td>
    <td>Reinicia o Portainer</td>
  </tr>
  <tr>
    <td><code>portainer.reset</code></td>
    <td>Reseta a senha do Portainer</td>
  </tr>
  <tr>
    <td><code>portainer.update</code></td>
    <td>Atualiza o Portainer</td>
  </tr>
  <tr>
    <td><code>traefik.update</code></td>
    <td>Atualiza o Traefik</td>
  </tr>
  <tr>
    <td><code>traefik.dash</code></td>
    <td>Ativa o Dashboard do Traefik</td>
  </tr>
  <tr>
    <td><code>traefik.fix</code></td>
    <td>Corrige a imagem da stack do Traefik para a versão 2.11.2</td>
  </tr>
  <tr>
    <td><code>credencial.reset</code></td>
    <td>Corrige as credenciais do Portainer usadas pelo instalador</td>
  </tr>
  <tr>
    <td><code>docker.fix</code></td>
    <td>Corrige o erro de versão mínima da API do Docker (DOCKER_MIN_API_VERSION=1.24)</td>
  </tr>
  <tr>
    <td><code>docker.fix2</code></td>
    <td>Reinstala o Docker em uma versão estável, evitando a 28.5.2</td>
  </tr>
  <tr>
    <td><code>limpar</code></td>
    <td>Limpa logs, volumes e imagens do Docker não usados (também aceita clean)</td>
  </tr>
  <tr>
    <td><code>chatwoot.mail</code></td>
    <td>Troca os e-mails do Chatwoot pela versão do Orion</td>
  </tr>
  <tr>
    <td><code>chatwoot.n.mail</code></td>
    <td>Troca os e-mails do Chatwoot Mega pela versão do Orion</td>
  </tr>
  <tr>
    <td><code>minio.bucket</code></td>
    <td>Cria buckets públicos no MinIO</td>
  </tr>
  <tr>
    <td><code>minio.bucket.delete</code></td>
    <td>Remove um bucket do MinIO</td>
  </tr>
  <tr>
    <td><code>quepasa.setup.on</code></td>
    <td>Ativa o Setup do Quepasa</td>
  </tr>
  <tr>
    <td><code>quepasa.setup.off</code></td>
    <td>Desativa o Setup do Quepasa</td>
  </tr>
  <tr>
    <td><code>n8n.workflows</code></td>
    <td>Importa os workflows da Quepasa no N8N + Nodes Quepasa</td>
  </tr>
  <tr>
    <td><code>comandos</code></td>
    <td>Exibe a lista de comandos dentro do menu do instalador</td>
  </tr>
</table>

---

<a href="https://star-history.dera.page/#oriondesign2015/SetupOrion&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://star-history.dera.page/svg?repos=oriondesign2015/SetupOrion&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://star-history.dera.page/svg?repos=oriondesign2015/SetupOrion&type=Date" />
   <img alt="Star History Chart" src="https://star-history.dera.page/svg?repos=oriondesign2015/SetupOrion&type=Date" />
 </picture>
</a>

