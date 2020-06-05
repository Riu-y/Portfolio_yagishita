## Ader
## URL
https://yagishita-ryusuke.work/

## サイト概要
<strong>自動車広告マッチングアプリ</strong>
aderはドライバーが移動している時間や空間を有効活用することを目的としています。
自動車に貼り付けが可能な特殊シートを活用して、広告主の企業は一般ユーザーに広域に様々な時間帯でオフラインでの広告宣伝業務を委託できます。
ユーザーは自動車をただの移動手段として使用するのではなく移動中も、広告宣伝費を稼ぐことができます。
さらにUberドライバーなど既に自動車を使って仕事をしている人も運賃だけの売り上げにとどまらず、宣伝広告の売り上げを得ることが可能になります。

### サイトテーマ
自動車広告業務を依頼、受注できるプラットフォーム。
自社の宣伝を行いたい企業と自社の車を使って小遣い稼ぎをしたい一般ユーザーまたはUberドライバーをマッチングするアプリケーション

### テーマを選んだ理由
UberやAirBを代表するように空間、リソースをシェアまたは有効活用するビジネスモデルに注目が集まる中、自動車を運転している時間と自動車自体の空間の空きを有効活用したビジネスモデルに価値があるのであるのではないかと考えました。そのモックとなるものを作成するにあたり自身の学習してきた内容にも適しているのではないかと思い選定しました。

### ターゲットユーザ
*自動車の所有するユーザー
*広告宣伝を行いたい企業

### 主な利用シーン
*自動車を使って副収入を得たいと考える時
*Uberドライバーがさらに収入を得たいと考える時
*企業がオフラインでの広告宣伝を行いたいと考える時

##環境一覧　(Version list)
使用言語/フレームワーク
*ruby-2.5.7
*Rails 5.2.4.2

開発環境
*Vagrant 2.2.6
*VirtualBox(CentOS)

本番環境/デプロイ
DB　server
*RDS(MySQL)
Web server
*Nginx
AP server
*Puma
デプロイ
*capistrano
その他
*https

EIP(固定IP設定)
DB_server
Route53(AWS)
MySQL(DB用ミドルウェア)


## 設計書
ER図
https://drive.google.com/file/d/1ybc6V10TkKdHOrbCgb5uxZYYzFKSa7Ud/view?usp=sharing

アプリケーション詳細設計書
https://docs.google.com/spreadsheets/d/1FpO8Si4C8R5dYYFnbp4onVUah0XwpZHkNH4lzFA5htk/edit?usp=sharing


テーブル定義書
https://docs.google.com/spreadsheets/d/1FG-5Dv7FckFC7-nKcCCjL0W-uWmJQka-/edit#gid=861866377


### 機能一覧
https://docs.google.com/spreadsheets/d/1OteHyH6HQ65CmnNGGMihRTHoI8--vh7PvLMiFVEqA_8/edit?usp=sharing




