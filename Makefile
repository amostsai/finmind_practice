RFup:
	docker-compose -f rabbitmq_flower.yml up
RFdown:
	docker-compose -f rabbitmq_flower.yml down

flaskup:
	docker-compose -f flask.yml up
flaskdown:
	docker-compose -f flask.yml down

celery:
	docker exec -it finmind_practice_flask_1 celery -A worker worker --loglevel=info
producer:
	docker exec -it finmind_practice_flask_1 python producer.py
