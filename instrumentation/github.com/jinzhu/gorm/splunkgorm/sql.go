// Copyright Splunk Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Package splunkgorm provides instrumentation for the [github.com/jinzhu/gorm]
// package.
package splunkgorm // import "github.com/signalfx/splunk-otel-go/instrumentation/github.com/jinzhu/gorm/splunkgorm"

import (
	"fmt"

	"github.com/stronger24/splunk-otel-go/instrumentation/database/sql/splunksql"

	"gorm.io/driver/mysql"
	"gorm.io/driver/postgres"
	"gorm.io/driver/sqlite"
	"gorm.io/driver/sqlserver"
	"gorm.io/gorm"
)

// openFunc allows overrides for testing.
var openFunc = splunksql.Open

// Open opens a traced gorm database connection specified by its database
// driver name and a driver-specific data source name. The driver must already
// be registered by the driver package.
func Open(driverName, dataSourceName string, opts ...splunksql.Option) (*gorm.DB, error) {
	// 获取被追踪的 SQL DB 连接
	sqlDB, err := openFunc(driverName, dataSourceName, opts...)
	if err != nil {
		return nil, err
	}

	// 根据驱动类型选择对应的 GORM V2 方言
	var dialector gorm.Dialector
	switch driverName {
	case "mysql":
		dialector = mysql.New(mysql.Config{
			Conn: sqlDB,
		})
	case "postgres":
		dialector = postgres.New(postgres.Config{
			Conn: sqlDB,
		})
	case "sqlite3":
		dialector = sqlite.New(sqlite.Config{
			Conn: sqlDB,
		})
	case "sqlserver":
		dialector = sqlserver.New(sqlserver.Config{
			Conn: sqlDB,
		})
	default:
		// 对于不支持的驱动，返回错误或使用通用方法
		return nil, fmt.Errorf("unsupported driver: %s", driverName)
	}

	// 使用现有的 SQL DB 连接创建 GORM V2 实例
	return gorm.Open(dialector, &gorm.Config{
		// 可以根据需要添加其他 GORM 配置
		ConnPool: sqlDB,
	})
}
