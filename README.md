# 🤖 AVIATOR AI - Sistema de Calibração com Feedback Manual

Sistema otimizado para treinar inteligência artificial até **99% de acurácia** através de feedback manual contínuo.

## 🎯 Objetivo

Calibrar a IA do Aviator através de um sistema simples e intuitivo onde você:
1. Vê a previsão da IA (multiplicador, categoria, confiança)
2. Registra o resultado real na plataforma
3. Clica em **POSITIVO** (se acertou) ou **NEGATIVO** (se errou)
4. A IA aprende e melhora continuamente

## 📊 Funcionalidades

### 1. **Barra de Progresso de Aprendizado**
- Visualização em tempo real do progresso (0-99%)
- Atualiza automaticamente conforme você fornece feedback
- Metas intermediárias: 50% → 75% → 90% → 99%

### 2. **Previsões Inteligentes**
- Multiplicador previsto
- Categoria (Vela Baixa / Chance de Dobrar / Vela Rosa)
- Nível de confiança (0-100%)

### 3. **Feedback Manual Simples**
- **Botão POSITIVO** (✅): Clique se a previsão estava correta
- **Botão NEGATIVO** (❌): Clique se a previsão estava errada
- **Próxima Previsão** (🔄): Gera nova previsão

### 4. **Histórico Completo**
- Últimas 10 previsões com feedback
- Hora, multiplicador previsto, categoria, confiança, resultado real
- Status de acerto/erro

### 5. **Estatísticas de Aprendizado**
- Acurácia geral
- Acurácia por categoria (Vela Baixa, Chance de Dobrar, Vela Rosa)
- Total de previsões e acertos

## 🚀 Como Usar

### Instalação Local
```bash
pip install -r requirements.txt
streamlit run app.py
```

### Fluxo de Uso

1. **Abra o app** - Você verá uma previsão com multiplicador, categoria e confiança
2. **Vá para a plataforma Aviator** - Observe o resultado real
3. **Registre o resultado** - Digite o multiplicador que realmente saiu
4. **Clique em POSITIVO ou NEGATIVO**:
   - **POSITIVO**: A previsão estava correta (ex: previu 5x e saiu 5x)
   - **NEGATIVO**: A previsão estava errada (ex: previu 5x mas saiu 1x)
5. **Repita** - Continue fornecendo feedback para melhorar a IA

## 📈 Exemplo de Uso

```
Previsão: 5.50x (Chance de Dobrar) - Confiança: 75%
↓
Você vê na plataforma: 1.20x
↓
Registra: 1.20x
↓
Clica: ❌ NEGATIVO
↓
IA aprende que essa previsão estava errada
```

## 💾 Banco de Dados

- **Arquivo**: `data/calibration.sqlite`
- **Tabelas**:
  - `predictions`: Armazena todas as previsões
  - `calibration_metrics`: Histórico de métricas

## 🎓 Estratégia de Treinamento

Para atingir 99% de acurácia:

1. **Fase 1 (0-30%)**: Forneça feedback para 30 previsões
2. **Fase 2 (30-60%)**: Continue com mais 30 previsões
3. **Fase 3 (60-90%)**: Adicione 30 mais previsões
4. **Fase 4 (90-99%)**: Refine com feedback contínuo

**Dica**: Quanto mais feedback você fornecer, mais precisa a IA fica!

## 🔧 Customização

### Alterar Categorias
Edite a função `classify_multiplier()` em `app.py`:
```python
def classify_multiplier(mult):
    if mult < 2.0:
        return "Vela Baixa"
    elif mult < 10.0:
        return "Chance de Dobrar"
    else:
        return "Vela Rosa"
```

### Alterar Cores
Modifique o CSS no início de `app.py`:
```python
color_map = {
    "Vela Baixa": "#ff3333",
    "Chance de Dobrar": "#ffaa00",
    "Vela Rosa": "#00ff88"
}
```

## 📝 Notas Importantes

- O app auto-refresh a cada 5 segundos
- Todos os dados são salvos localmente em SQLite
- Você pode pausar/retomar o treinamento a qualquer momento
- Não há limite de previsões

## 🎯 Meta Final

**Objetivo**: Atingir 99% de acurácia com feedback manual contínuo!

Quanto mais feedback você fornecer, mais inteligente a IA fica. Boa sorte! 🚀
