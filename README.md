# 基本情報

## アプリケーション名	
Dri-connect

## アプリケーション概要
物流に関わるドライバーの自発的発信や情報交換を通して、「物流業務が楽しくてかっこいい」と感じてもらえる交流プラットフォームの構築を目指す

## アプリ作成の背景
現在、「ドライバー」が生活インフラを支える存在である。
その一方で、「ドライバー」それぞれが専門性・知識・ノウハウ・情報を蓄積しているのにも関わらず、それらを発信・継承していく環境が欠落しており、加えて３K（「きつい」「汚い」「危険」）な仕事としてのイメージが持たれている。
この状況を脱し、「物流業務が楽しくてかっこいい」とドライバー自身も（いずれは業界外にの人にも）感じてもらえるプラットフォームを構築したいと考え、アプリ作成を決意した。

## URL
https://dri-connect.onrender.com

## テスト用アカウント
Mail: test_user@mmm  
Pass: test123abc

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/2f318cc6f489a087a3c4c0525510751c.png)](https://gyazo.com/2f318cc6f489a087a3c4c0525510751c)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/5e84250b166d69f0529b0dd7cb7a78ce.png)](https://gyazo.com/5e84250b166d69f0529b0dd7cb7a78ce)

## 開発環境
Ruby / Ruby on Rails / MySQL / GitHub / Render / Visual Studio Code


# 利用方法

## 物流に携わるドライバーの交流
1. ログイン後に「ひとりごと」より、その時点で発信したい思い・情報を投稿する
2. 他のユーザーが、投稿された「ひとりごと」にコメントを投稿する

## 物流拠点の情報交換
1. 物流拠点やその周辺施設に関する情報が手元にある場合、管理者に所定フォームより送信する
2. 管理者が投稿することで、多くの人が情報を確認することができる


# 機能
## 要件
[要件定義書](https://docs.google.com/spreadsheets/d/1rGB3fwUHuTCafFNthbR5Uer6Iokc7G_zQtBlyBBlsUQ/edit?usp=sharing)

## 実装機能詳細
[![Image from Gyazo](https://i.gyazo.com/e3d1a95ede453b8ccdace403aa458d42.png)](https://gyazo.com/e3d1a95ede453b8ccdace403aa458d42)
情報提供: ユーザーからの情報提供や、意見を総合的に収集するツール  
ひとりごと: ユーザーが発信したい思い・情報を投稿できるツール。コメント付与することも可能。  
倉庫情報・倉庫周辺情報: 蓄積された倉庫情報を表示。ユーザーから提供された情報を精査するため、現時点では管理者のみ追加・編集可能。

## 実装予定の機能
* 掲示倉庫情報の拡充
* 倉庫検索機能
* SNSアカウントでのユーザー登録・ログイン
* ひとりごとに対する評価機能（Wow）
* スマホ表示の調整
* 画面遷移スピードの改善


# その他

## ローカルでの動作方法
以下コマンドを順に実行  
>% git clone https://github.com/TekuToko/driconnect  
>% cd ~repository-name~  
>% bundle install  
>% yarn install  

## 工夫したポイント
* 「気軽に使えそう」と思ってもらえるよう、デザイン・配置を臨機応変に調整
* 管理者・資料社の意思疎通を気軽に行えるお問い合わせ機能搭載
