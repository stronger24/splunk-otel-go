module github.com/stronger24/splunk-otel-go/instrumentation/github.com/jinzhu/gorm/splunkgorm

go 1.23.0

require (
	github.com/jinzhu/gorm v1.9.16
	github.com/stretchr/testify v1.11.1
	github.com/stronger24/splunk-otel-go/instrumentation/database/sql/splunksql v0.0.0-20250926043046-ca8d536f4d99
	gorm.io/gorm v1.30.0
)

require (
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/go-sql-driver/mysql v1.8.1 // indirect
	github.com/golang-sql/civil v0.0.0-20220223132316-b832511892a9 // indirect
	github.com/golang-sql/sqlexp v0.1.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20240606120523-5a60cdf6a761 // indirect
	github.com/jackc/pgx/v5 v5.6.0 // indirect
	github.com/jackc/puddle/v2 v2.2.2 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/mattn/go-sqlite3 v1.14.22 // indirect
	github.com/microsoft/go-mssqldb v1.8.2 // indirect
	github.com/stronger24/splunk-otel-go/instrumentation/internal v0.0.0-20250926043046-ca8d536f4d99
	golang.org/x/crypto v0.31.0 // indirect
	golang.org/x/sync v0.10.0 // indirect
	golang.org/x/text v0.21.0 // indirect
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/otel v1.38.0 // indirect
	go.opentelemetry.io/otel/metric v1.38.0 // indirect
	go.opentelemetry.io/otel/trace v1.38.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	gorm.io/driver/mysql v1.6.0
	gorm.io/driver/postgres v1.6.0
	gorm.io/driver/sqlite v1.6.0
	gorm.io/driver/sqlserver v1.6.1
)

replace (
	github.com/stronger24/splunk-otel-go/instrumentation/database/sql/splunksql => ../../../../database/sql/splunksql
	github.com/stronger24/splunk-otel-go/instrumentation/internal => ../../../../internal
	github.com/signalfx/splunk-otel-go/instrumentation/internal => github.com/stronger24/splunk-otel-go/instrumentation/internal v0.0.0-20250926043046-ca8d536f4d99
)
