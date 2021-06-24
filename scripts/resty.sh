docker run -d --name resty -p 80:80 \
 -v $(pwd)/default.conf:/etc/nginx/conf.d/default.conf \
 -v $(pwd)/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf \
 -v $(pwd)/db_data.lua:/usr/local/openresty/lualib/db_data.lua \
 openresty/openresty:buster-fat

sleep 1
docker exec -t resty sh -c "alias ll='la -lah'"

# run basic tests
curl -s http://localhost > /dev/null
curl http://localhost/graph/d/pmm-home/home-dashboard
curl http://localhost/graph/d/pmm-database-checks/database-checks
curl -s http://localhost/bar > /dev/null

# check the log output
docker logs resty
