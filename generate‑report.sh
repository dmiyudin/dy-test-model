#!/bin/bash
# Путь к исполняемому файлу Archi 
ARCHI_EXECUTABLE="/mnt/c/Program Files/Archi/Archi.exe"

# Путь к модели
MODEL_FILE="C:\Users\dmiyu\Documents\Archi\model-repository\dy-archi-ss\.git\temp.archimate"

# Папка для HTML-отчета
REPORT_DIR="C:\Users\dmiyu\Documents\Archi\html-reports\Upstream"

# Генерация отчета
"$ARCHI_EXECUTABLE" -application com.archimatetool.commandline.app \
  -consoleLog -nosplash \
  -loadModel "$MODEL_FILE" \
  -html.createReport "$REPORT_DIR"

# Добавление отчета в git
# git add "$REPORT_DIR"
# git commit -m "Автоматическая генерация HTML-отчета"
