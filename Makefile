rfup:
	docker-compose -f rabbitmq_flower.yml up
rfdown:
	docker-compose -f rabbitmq_flower.yml down

webup:
	docker-compose -f web.yml up
webdown:
	docker-compose -f web.yml down

producer:
	docker exec -it finmind_practice_flask_1 python producer.py
