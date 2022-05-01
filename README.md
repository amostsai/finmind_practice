# FinMindBook
FinMind Book

# 啟動rabbitmq, flower
1. ssh 到第一台電腦
2. 打開防火牆的5672, 15672, 5555
3. cd projects
4. git clone git@github.com:amostsai/finmind_practice.git
5. make rf_up

# 啟動flask, mysql
1. ssh 到第二台電腦
2. cd projects
3. git clone git@github.com:amostsai/finmind_practice.git
4. 修改worker.py，將原本的rabbitmq改為第一台電腦的ip位置
5. make web_up

# 啟動worker
1. ssh 到第二台電腦
2. cd projects/finmind_practice
3. make celery

# 執行producer
1. ssh 到第二台電腦
2. cd projects/finmind_practice
3. make producer 