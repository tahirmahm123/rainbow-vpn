# Hosting url to be used for adding server entry to database and show progress on web
_DOMAIN="100456.xyz"
#url for progress
PROGRESS_URL=$HOSTING_DOMAIN"changeProgress.php?progress=";
# Some API Authentication Configuration
API_URL=\"$_DOMAIN\";
API_SSL="1";
API_PAGE=\"login_from_server\";
API_USER_PARAM="username";
API_PASS_PARAM="password";
API_SERVER_PARAM="server";
API_PROCESS_PARAM="process";
API_CONNECT_SCRIPT_PATH="/etc/ocserv/.../...";
API_DISCONNECT_SCRIPT_PATH="/etc/ocserv/.../....";
