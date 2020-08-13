## *Ader*
### URL : https://yagishita-ryusuke.work/

## サイト概要
<strong>自動車広告マッチングアプリ</strong>  
Aderはドライバーが移動している時間や空間を有効活用することを目的としています。  
自動車に貼り付けが可能な特殊シートを活用して、広告主の企業は一般ユーザーに広域に様々な時間帯でオフラインでの広告宣伝業務を委託できます。
ユーザーは自動車をただの移動手段として使用するのではなく移動中も、広告宣伝費を稼ぐことができます。
さらにUberドライバーなど既に自動車を使って仕事をしている人も運賃だけの売り上げにとどまらず、宣伝広告の売り上げを得ることが可能になります。
  
<strong><ビジネスフロー></strong>
![business](https://user-images.githubusercontent.com/59305276/83839214-60a94500-a736-11ea-898e-6b9e661b4b10.png)

### サイトテーマ
自動車広告業務を依頼、受注できるプラットフォーム。  
自社の宣伝を行いたい企業と自社の車を使って小遣い稼ぎをしたい一般ユーザーまたはUberドライバーをマッチングするアプリケーションです。

### テーマを選んだ理由
UberやAirBを代表するように空間、リソースをシェアまたは有効活用するビジネスモデルに注目が集まる中、自動車を運転している時間と自動車自体の空間の空きを有効活用したビジネスモデルに価値があるのであるのではないかと考えました。そのモックとなるものを作成するにあたり自身の学習してきた内容にも適しているのではないかと思い選定しました。

### ターゲットユーザ
* 副収入を得たい自動車を所有していてるユーザー
* 広告宣伝を行いたい企業

### 主な利用シーン
* 自動車を使って副収入を得たいと考える時
* Uberドライバーがさらに収入を得たいと考える時
* 企業がオフラインでの広告宣伝を行いたいと考える時

## アプリケーション構成図
![Network_Diagram (2)](https://user-images.githubusercontent.com/59305276/90159792-dcc1a800-ddcb-11ea-8d60-e132be5f6562.png)
## 環境一覧　(Version list)
使用言語/フレームワーク
* ruby-2.5.7
* Rails 5.2.4.2

開発環境
* Docker/docker-compose(8/10変更)
* Vagrant 2.2.6
* VirtualBox(CentOS)

本番環境/デプロイ  
* DB server
  * RDS(MySQL)
* Web server
  * Nginx
* AP server 
  * Puma
* CircleCI (CI/CDパイプラインを構築)
  * capistrano (CircleCIでmasterブランチへマージの場合はcapistranoにてデプロイ)
* その他
  * https

## 設計書
_ER図_  
https://drive.google.com/file/d/1ybc6V10TkKdHOrbCgb5uxZYYzFKSa7Ud/view?usp=sharing

_アプリケーション詳細設計書_    
https://docs.google.com/spreadsheets/d/1FpO8Si4C8R5dYYFnbp4onVUah0XwpZHkNH4lzFA5htk/edit?usp=sharing

_テーブル定義書_  
https://docs.google.com/spreadsheets/d/1FG-5Dv7FckFC7-nKcCCjL0W-uWmJQka-/edit#gid=861866377

## 機能一覧
https://docs.google.com/spreadsheets/d/1OteHyH6HQ65CmnNGGMihRTHoI8--vh7PvLMiFVEqA_8/edit?usp=sharing

### 管理者機能
* ドライバーの一覧、利用ステータスの有効、無効化
* 広告主の一覧、利用ステータスの有効、無効化
* 広告の一覧、掲載ステータスの有効、無効化
* お知らせ投稿機能 
* 問い合わせ管理機能

### 広告機能
* 検索機能
* ジャンル検索機能
* チャット機能（Action Cableによるリアルタイム通信）
* お気に入り機能（Ajaxによる非同期通信）
* コメント機能（Ajaxによる非同期通信）
* タグ機能（Vision APIを利用したAI自動検索）
* 画像投稿機能（Javascriptを利用したプレビュー機能）

### ドライバー機能
* 宣伝作業申し込み機能
* プロフィール機能
  * 口座情報登録機能
  * 登録者登録機能
  * 活動地域の地図表示機能（Google Map API）
* ダッシュボード機能
  * 取引管理機能（enumによるステータス管理）
* フォロー機能

### 広告主機能
* 広告投稿機能（広告主側の画面）
* プロフィール機能
  * 登録住所の地図表示機能（Google Map API）
* ダッシュボード機能
  * 取引管理機能（enumによるステータス管理）
* フォロー機能
 
### その他
* ユーザー認証機能
  * 入力エラーの日本語化及びカスタマイズ
* 問い合わせ機能
* CRUD処理
