#!/usr/bin/env bash
# ------------------------------------------------------------------
# Publica o site no GitHub (repositório já clonado, com CNAME e fotos/)
# Uso:
#   1) Copie para dentro do repositório: index.html, calculadora.html,
#      .nojekyll, e as pastas portal/ e catalogo/ (e seminovas.json quando tiver)
#   2) Rode:  bash deploy.sh "mensagem do commit"
# ------------------------------------------------------------------
set -e
MSG="${1:-Atualiza portais, geradores e calculadora}"
git add -A
git commit -m "$MSG" || { echo "Nada novo para publicar."; exit 0; }
git push
echo "OK. O GitHub Pages atualiza sozinho em ~1-2 minutos."
