#!/bin/bash

# Script para iniciar o Aviator AI - Sistema de Calibração

echo "🚀 Iniciando Aviator AI - Sistema de Calibração..."
echo ""
echo "📍 Localização: $(pwd)"
echo "📦 Dependências: Streamlit, Pandas, NumPy"
echo ""

# Verificar se as dependências estão instaladas
if ! command -v streamlit &> /dev/null; then
    echo "⚠️  Streamlit não encontrado. Instalando..."
    pip install streamlit pandas numpy
fi

echo "✅ Iniciando aplicação..."
echo ""
echo "🌐 Abra seu navegador em: http://localhost:8501"
echo ""

# Iniciar o app
streamlit run app.py --logger.level=error
