build-all: build-ui build-comment build-post build-prometheus build-blackbox-exporter build-mongodb-exporter build-alertmanager build-fluentd build-telegraf

build-ui:
	docker build -t $(USER_NAME)/ui:$(APP_TAG) src/ui/

build-comment:
	docker build -t $(USER_NAME)/comment:$(APP_TAG) src/comment/

build-post:
	docker build -t $(USER_NAME)/post:$(APP_TAG) src/post-py/

build-prometheus:
	docker build -t $(USER_NAME)/prometheus monitoring/prometheus/

build-blackbox-exporter:
	docker build -t $(USER_NAME)/blackbox-exporter:0.14.0 monitoring/blackbox-exporter/

build-mongodb-exporter:
	docker build -t $(USER_NAME)/mongodb-exporter:0.8.0 monitoring/mongodb-exporter/

build-alertmanager:
	docker build -t $(USER_NAME)/alertmanager monitoring/alertmanager

build-telegraf:
	docker build -t $(USER_NAME)/telegraf:1.11.1 monitoring/telegraf

push-all: push-ui push-comment push-post push-prometheus push-blackbox-exporter push-mongodb-exporter push-alertmanager push-fluentd push-telegraf

push-ui:
	docker push $(USER_NAME)/ui:$(APP_TAG)
push-comment:
	docker push $(USER_NAME)/comment:$(APP_TAG)
push-post:
	docker push $(USER_NAME)/post:$(APP_TAG)
push-prometheus:
	docker push $(USER_NAME)/prometheus
push-blackbox-exporter:
	docker push $(USER_NAME)/blackbox-exporter:0.14.0
push-mongodb-exporter:
	docker push $(USER_NAME)/mongodb-exporter:0.8.0
push-alertmanager:
	docker push $(USER_NAME)/alertmanager
push-telegraf:
	docker push ${USER_NAME}/telegraf:1.11.1






