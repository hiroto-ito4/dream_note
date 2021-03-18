## DreamNote

夢に向かって頑張る人のためのアプリケーション

## 概要

何かを目指すとき、仲間がいると頑張れませんか?

そんな夢に向かって頑張る仲間と繋がれるアプリケーションです。

利用者はユーザー登録時に「夢」と、それを叶えるために「いつまでに、何をするのか」を登録します。
あとは、日々の努力を「積み上げ報告・質問・その他」の項目を指定して投稿していきます。
投稿に対して他者がコメントを行い、励ましや質問の回答をすることでモチベーションの維持や問題解決につなげていくことができます。

## App URL
aaaaaaa

## テスト用アカウント
aaaaaaaa

## 利用方法
aaaaaaa

## 課題解決
| 課題 | 課題解決 |
|-----|---------|
|従来のSNSでは、夢を持ち、それに向かって努力している人のみで繋がるのは難しい|ユーザー登録時に「夢」と、それを叶えるために「いつまでに、何をするのか」を登録してもらう|
| 日々の積み重ねを誰かと共有したい|アクション投稿機能を実装、その日に行った努力などを共有できるようにする|
| 夢に向かって努力する過程で課題が出てきた時に、誰かに質問をしたり、助言を受けたりしたい| "コメント投稿機能を実装、投稿した内容にコメントを付けれるようにする。アクション投稿時に「積み上げ」「質問」「その他」を選択してもらい、「質問」の場合一覧表示画面の表示が変わるように実装し,コメントがつきやすいようにする"|

## 機能一覧
| 実装する機能 | 要件 |
|------------|------|
| ユーザー管理機能 | ユーザーの新規登録・ログイン・ログアウトが可能 |
| アクション投稿機能 | 画像付きのアクションが投稿可能。投稿は「積み上げ」「質問」「その他」のジャンルを選択可能 |
| アクション一覧表示機能 | トップページに投稿したアクションが左上から新しい順番に表示される。質問があった場合は表示が切り替わる | 
| アクション詳細表示機能 | 各投稿の詳細が詳細表示ページで閲覧可能 |
| アクション編集・削除機能 | 投稿者本人が投稿したアクションを編集・削除削除可能 | 
| ユーザー詳細表示機能 | 各ユーザーのプロフィール・投稿一覧が表示可能 | 
| ユーザー情報編集機能 | ログイン中のユーザーでアカウント本人であればプロフィール編集が可能 | 
| コメント機能 | ログイン中のユーザーがアクション詳細画面からコメント投稿可能 |

## 追加予定機能
aaaaaaa

## ローカルでの動作方法
aaaaaaa

## 開発環境
aaaaaaa

## DB設計
### usersテーブル

| Column             | Type    | Options                  |
|--------------------|---------|--------------------------|
| nickname           | string  | null: false              |
| email              | string  | null: false,unique: true |
| encrypted_password | string  | null: false              |
| profile            | text    | null: false              |
| dream              | string  | null: false              |
| first_limit_id     | integer | null: false              |
| first_process      | string  | null: false              |
| second_limit_id    | integer | null: false              |
| second_process     | string  | null: false              |
| third_limit_id     | integer | null: false              |
| third_process      | string  | null: false              |
| fourth_limit_id    | integer | null: false              |
| fourth_process     | string  |                          |
| fifth_limit_id     | integer | null: false              |
| fifth_process      | string  |                          |

#### Association
- has_many : works
- has_many : comments

### worksテーブル

| Column       | Type       | Options                        |
|--------------|------------|--------------------------------|
| genre_id     | integer    | null: false                    |
| title        | string     | null: false                    |
| content      | text       | null: false                    |
| inpression   | text       | null: false                    |
| user         | references | null: false, foreign_key: true |


#### Association
- belongs_to : user
- has_many   : comments

### commentsテーブル

| Column   | Type       | Options                        |
|--------  |------------|--------------------------------|
| reaction | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| work     | references | null: false, foreign_key: true |

#### Association
- belongs_to : user
- belongs_to : work

