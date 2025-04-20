#!/bin/bash
# Путь к исполняемому файлу Archi 
ARCHI_EXECUTABLE="C:\Program Files\Archi\Archi.exe"

# Путь к модели
MODEL_FILE="C:\Users\dmiyu\Documents\Archi\model\SS-Upstream.archimate"

# Папка для HTML-отчета
REPORT_DIR="C:\Users\dmiyu\Documents\Archi\html-reports\SS-Upstream"

# Генерация отчета
$ARCHI_EXECUTABLE -application com.archimatetool.commandline.app \
  -consoleLog -nosplash \
  -loadModel "$MODEL_FILE" \
  -html.createReport "$REPORT_DIR"

# Добавление отчета в git
git add "$REPORT_DIR"
git commit -m "Автоматическая генерация HTML-отчета"
