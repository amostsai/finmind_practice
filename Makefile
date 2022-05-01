rf_up:
	docker-compose -f rabbitmq_flower.yml up
rf_down:
	docker-compose -f rabbitmq_flower.yml down

web_up:
	docker-compose -f web.yml up
web_down:
	docker-compose -f web.yml down

celery:
	docker exec -it finmind_practice_flask_1 celery --app app worker --loglevel=info
producer:
	docker exec -it finmind_practice_flask_1 python producer.py
