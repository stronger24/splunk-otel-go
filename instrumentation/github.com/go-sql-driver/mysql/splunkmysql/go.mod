module github.com/stronger24/splunk-otel-go/instrumentation/github.com/go-sql-driver/mysql/splunkmysql

go 1.23.0

require (
	github.com/go-sql-driver/mysql v1.9.3
	github.com/stretchr/testify v1.11.1
	github.com/stronger24/splunk-otel-go/instrumentation/database/sql/splunksql v0.0.0-00010101000000-000000000000
)

require (
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/stronger24/splunk-otel-go/instrumentation/internal v0.0.0-00010101000000-000000000000 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/otel v1.38.0 // indirect
	go.opentelemetry.io/otel/metric v1.38.0 // indirect
	go.opentelemetry.io/otel/trace v1.38.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace (
	github.com/stronger24/splunk-otel-go/instrumentation/database/sql/splunksql => ../../../../database/sql/splunksql
	github.com/stronger24/splunk-otel-go/instrumentation/internal => ../../../../internal
)
