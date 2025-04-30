#!/bin/bash
## Ejecutar para crear entorno automaticamente con nombre mira_murati

echo "🔧 Verificando instalación de Python..."
if ! command -v python3 &> /dev/null
then
    echo "❌ Python no está instalado. Instálalo antes de continuar."
    exit 1
fi

echo "🚀 Creando entorno virtual 'mira_murati'..."
python3 -m venv mira_murati

echo "🔄 Activando entorno virtual..."
source mira_murati/bin/activate

echo "📦 Actualizando pip..."
pip install --upgrade pip

if [ -f requirements.txt ]; then
    echo "📌 Instalando paquetes desde requirements.txt..."
    pip install -r requirements.txt
else
    echo "⚠️ No se encontró requirements.txt, instala los paquetes manualmente."
fi

echo "✅ ¡Entorno listo! Para activarlo en futuras ejecuciones usa: source mira_murati/bin/activate"