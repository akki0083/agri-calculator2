# agri-calculator2 DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|pass|string|null: false|
### Association
- has_many :crops
- has_many :fields
- has_many :attachements
- has_many :chemicals

## crops テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|reference|foreign_key: true|
### Associaton
- belongs_to :user

## fields テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|area|float|null: false|
|user_id|ireference|foreign_key: true|
### Association
- belongs_to :user

## attachements テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|width|float|null: false|
|capacity|float|null: false|
|user_id|reference|foreign_key: true|
### Association
- belongs_to :users

## chemicals テーブル
|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|
- belongs_to :users

## infomations テーブル（csvファイル読み込み）
