#!/usr/bin/env sh

set -o errexit
set -o nounset 
set -o pipefail

: "${API_HOST}"

cat <<EOF > /usr/share/nginx/html/env.js
window.env = {};
window.env.API_HOST = "$API_HOST";
EOF

exec "$@"