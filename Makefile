up:
	docker-compose up
down:
	docker-compose down
celery:
	docker exec -it finmind_practice_flask_1 celery -A worker worker --loglevel=info
producer:
	docker exec -it finmind_practice_flask_1 python producer.py
