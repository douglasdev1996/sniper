# 🚀 Guia de Deploy - Aviator AI Calibração

## Local (Seu Computador)

### Pré-requisitos
- Python 3.8+
- pip (gerenciador de pacotes Python)

### Instalação

1. **Clone ou baixe o projeto**
```bash
cd aviator-ai-calibrated
```

2. **Instale as dependências**
```bash
pip install -r requirements.txt
```

3. **Inicie o app**
```bash
streamlit run app.py
```

4. **Acesse no navegador**
```
http://localhost:8501
```

## Streamlit Cloud (Recomendado - Grátis)

### Passo 1: Preparar o Repositório GitHub

1. Crie um repositório no GitHub
2. Faça upload dos arquivos:
   - `app.py`
   - `requirements.txt`
   - `.streamlit/config.toml`
   - `README.md`

### Passo 2: Deploy no Streamlit Cloud

1. Acesse [streamlit.io/cloud](https://streamlit.io/cloud)
2. Clique em "New app"
3. Selecione seu repositório GitHub
4. Selecione a branch (main)
5. Defina o caminho do arquivo: `app.py`
6. Clique em "Deploy"

### Passo 3: Configurar Variáveis de Ambiente (Opcional)

Se precisar de variáveis de ambiente, vá em:
- Settings → Secrets → Adicione as variáveis

## Docker (Avançado)

### Criar Dockerfile

```dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
```

### Build e Run

```bash
docker build -t aviator-ai .
docker run -p 8501:8501 aviator-ai
```

## Heroku (Gratuito com Limitações)

### Passo 1: Criar Procfile

```
web: streamlit run app.py --server.port=$PORT --server.address=0.0.0.0
```

### Passo 2: Deploy

```bash
heroku login
heroku create seu-app-name
git push heroku main
```

## Railway.app (Recomendado - Fácil)

1. Acesse [railway.app](https://railway.app)
2. Clique em "New Project"
3. Selecione "Deploy from GitHub"
4. Selecione seu repositório
5. Defina variáveis de ambiente se necessário
6. Deploy automático!

## Troubleshooting

### Erro: "ModuleNotFoundError: No module named 'streamlit'"
```bash
pip install streamlit
```

### Erro: "Port 8501 is already in use"
```bash
streamlit run app.py --server.port 8502
```

### Banco de dados não persiste
- Local: Dados são salvos em `data/calibration.sqlite`
- Cloud: Use um banco de dados externo (PostgreSQL, MongoDB, etc.)

## Backup de Dados

### Fazer backup local
```bash
cp data/calibration.sqlite data/calibration_backup_$(date +%Y%m%d_%H%M%S).sqlite
```

### Restaurar backup
```bash
cp data/calibration_backup_YYYYMMDD_HHMMSS.sqlite data/calibration.sqlite
```

## Performance

### Otimizações
- Cache de dados com `@st.cache_data`
- Limite de histórico a 10 registros
- Auto-refresh a cada 5 segundos

### Monitoramento
- Verifique logs do Streamlit Cloud
- Use `st.write()` para debug
- Monitore uso de memória

## Suporte

Para problemas:
1. Verifique o README.md
2. Consulte a documentação do Streamlit
3. Verifique os logs de erro
