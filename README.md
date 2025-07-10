# Learn Dockerfile

Projeto simples com React + Vite para praticar a criação de ambientes Docker multi-contêiner usando Docker Compose.

## 📘 Desafio

Este projeto foi desenvolvido com base no seguinte desafio:
[Desafio: Configuração de Ambiente com Docker Compose](https://www.notion.so/Desafio-Configura-o-de-Ambiente-com-Docker-Compose-22c723b441628015b256c48b310ba6b4?source=copy_link)

## 📦 Tecnologias utilizadas

- [Vite](https://vitejs.dev/)
- [React](https://reactjs.org/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)


## 🚀 Como executar o projeto com Docker Compose

### 1. Clone o repositório

```bash
git clone https://github.com/atalopereira/learn-dockerfile.git
cd learn-dockerfile
```

### 2. Configure as variáveis de ambiente

Crie um arquivo `.env` com base no `.env.example`:

```bash
cp .env.example .env
```

Você pode manter os valores padrão ou modificá-los conforme necessário.

---

### 3. Torne o script `run.sh` executável

```bash
chmod +x run.sh
```

---

### 4. Suba os containers

Execute o script:

```bash
./run.sh
```

Isso irá iniciar os containers da aplicação React e do banco de dados MySQL.

Acesse a aplicação em: [http://localhost:3001](http://localhost:3001)

## 🔌 Testar a conexão entre os containers

Para verificar se o container da aplicação React consegue alcançar o container do banco MySQL, execute o seguinte comando:

```bash
docker exec -it react-website ping mysql_website
```

Se a comunicação estiver funcionando corretamente, você verá respostas como:

```
64 bytes from mysql_website: icmp_seq=1 ttl=64 time=0.12 ms
```

> Isso confirma a comunicação em rede entre os containers.

## 📂 Estrutura de pastas

```
learn-dockerfile/
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── public/
├── src/
│   ├── App.jsx
│   ├── main.jsx
│   └── assets/
├── run.sh
├── package.json
└── vite.config.js
```

## 📃 Licença

Este projeto é apenas para fins de aprendizado. Sem licença específica.
