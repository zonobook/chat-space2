## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Assotiation
- has_many :groups, through: :members
- has_many :members
- has_many :messages

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Assotiation
- has_many :users, through: :members
- has_many :members
- has_many :messages

## membersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|group|references|foreign_key: true|

### Assotiation
- belongs_to :user
- belongs_to :group

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|null: true|
|user|references|foreign_key: true|
|group|references|foreign_key: true|

### Assotiation
- belongs_to :user
- belongs_to :group