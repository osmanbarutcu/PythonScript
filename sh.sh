server {
    listen 8080;
    server_name 192.168.2.51;
    access_log /var/log/nginx/port_8080_access.log combined;
    
    
    
    location / {
        if ($server_port = 19999) {
            return 403;
        }
        proxy_pass http://192.168.2.51:19999;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        auth_basic "Restricted Access";
        auth_basic_user_file /etc/netdata/.htpasswd;
    }
}