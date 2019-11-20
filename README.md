# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# freemarket_sample_63c DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false, index: true|unique: true|
|kanji_surname|string|null: false|
|kanji_given_name|string|null: false|
|kana_surname|string|null: false|
|kana_given_name|string|null: false|
|year|string|null: false|
|month|string|null: false|
|day|string|null: false|
|postal_code|string|null: false|
|prefectures|string|null: false|
|municipalities|string|null: false|
|address|string|null: false|
|building|string|null: false|
|phone_number|string|null: false|
|card_year|string|
|card_month|string|
|card_code|string|
|card_number|string|
### Association
- has_many :product
- has_many :favorite
  has_many :chat

## productテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|string|null: false|
|status|string|null: false|
|postage|string|null: false|
|region|string|null: false|
|arrival_date|string|null: false|
|price|string|null: false|
|size|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|

### Association
- has_many :category1
- has_many :image
- has_many :chat
- has_many :favorite
- belongs_to :brand

## chatテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false,
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :product
- belongs_to :user

## favariteテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product
 
## imageテーブル
|Column|Type|Options|
|------|----|-------|
|url|text|null: false|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :product

## category1テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :
- belongs_to :user

## category2テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|
|user_id|integer|


### Association
- belongs_to :user

## category3テーブル
|Column|Type|Options|
|------|----|-------|
|product_id|integer|
|user_id|integer|


### Association
- belongs_to :user

## brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|

### Association
- has_many :product
