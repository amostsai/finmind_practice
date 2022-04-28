from celery import Celery

app = Celery(
    "task",
    include=["tasks"],  # 只包含 tasks.py 裡面的程式, 才會成功執行
    broker="pyamqp://worker:worker@rabbitmq:5672/",  # 連線到 rabbitmq 分散時要改為正式位置!
)
