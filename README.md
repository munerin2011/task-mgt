s# README

# ToDo-app DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :tasks

## tasksテーブル

|Column|Type|Options|
|------|----|-------|
|state|string|null: false|
|task|text|null: false|
|limit|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users