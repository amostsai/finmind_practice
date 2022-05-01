from celery import Celery

app = Celery(
    "task",
    include=["tasks"],  # 只包含在include裡面的程式, 才能執行
    broker="pyamqp://worker:worker@rabbitmq:5672/",  # 連線到 rabbitmq 分散時要改為正式位置!
)
