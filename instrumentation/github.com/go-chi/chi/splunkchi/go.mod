module github.com/stronger24/splunk-otel-go/instrumentation/github.com/go-chi/chi/splunkchi

go 1.23.0

require (
	github.com/go-chi/chi v1.5.5
	github.com/stronger24/splunk-otel-go/instrumentation/internal v0.0.0-00010101000000-000000000000
	go.opentelemetry.io/otel v1.38.0
	go.opentelemetry.io/otel/trace v1.38.0
)

require (
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/otel/metric v1.38.0 // indirect
)

replace github.com/stronger24/splunk-otel-go/instrumentation/internal => ../../../../internal
