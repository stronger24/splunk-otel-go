module github.com/stronger24/splunk-otel-go/instrumentation/github.com/go-sql-driver/mysql/splunkmysql/test

go 1.23.0

replace (
	github.com/signalfx/splunk-otel-go/instrumentation/database/sql/splunksql => ../../../../../database/sql/splunksql
	github.com/signalfx/splunk-otel-go/instrumentation/github.com/go-sql-driver/mysql/splunkmysql => ../
	github.com/signalfx/splunk-otel-go/instrumentation/internal => ../../../../../internal
)
