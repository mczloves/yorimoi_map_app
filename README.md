# よりもいMAP
![README](https://user-images.githubusercontent.com/88571910/165759864-601b73f4-343d-42ec-a762-5271de5fd82a.png)


アニメ「宇宙よりも遠い場所」の「聖地巡礼」をサポートするアプリです。

> **宇宙よりも遠い場所とは？**<br>
 女子高生四人が宇宙よりも遠い場所『南極』を目指す青春アニメ<br>

> **聖地巡礼とは？**<br>
 アニメの舞台やモデルとなった場所をファンが訪れること。

## URL 
http://test-yorimoi-seichi-map-sample.com <br>
トップページからゲストログイン可能です。
現在サービス停止中です。

## 作成背景
舞台となる、群馬県館林市はアニメツーリズム協会が定める「行きたい聖地88選」に４年連続で選出。<br>
館林市は地域活性化として、アニメと公式で連携しているため訪れるファンが非常に多いです。<br>

### ~ 課題 ~
私も作品のファンなので、実際に聖地巡礼した際に課題を見つけました。

![課題 001](https://user-images.githubusercontent.com/88571910/168231794-6389af7d-27e8-4866-b0fd-8c7ce300bee0.jpeg)



**それなら自分が専用のアプリを作ろう…！！**<br>

### ~ 課題解決 ~
大きく４つ課題を定義して、解決を目指しました。

![課題解決 002](https://user-images.githubusercontent.com/88571910/168245627-6e8d3034-b110-4e13-8c62-54bc36a39901.jpeg)


## ユーザーへの思い

私が聖地巡礼をした時に道に迷っていたところ、地元の方に道を教えていただきました。<br>
その際に、「道に迷っている人を案内することが多いんだよ」 とおっしゃいました。

専用のアプリを作成することで、聖地巡礼をしている方の役に立ちたいという想いから【よりもいMAP】を作成しました。



## こだわった点
アプリを開発するにあたって実際に聖地巡礼をしている方にお声がけして、6名の方に使用していただきフィードバックをいただきました。<br>
例えばアプリの特性上スマホでの利用がほとんどなので、ボタンを大きくすることや、画像サイズを小さくするなど、自分では気づかなかったユーザー視点のアドバイスを聞くことができました。


## アプリ紹介

### アプリ全体　　
- スマホでの使用が主であるためレスポンシブデザインを意識した。
- 非ログインでも利用可能にした。(感想投稿,コメント時のみログインページへ）
- fontawesomeのアイコンを使用しアプリの機能を分かりやすく表示

### ①トップページ
 - アプリの使用方法が直感的に分かることを意識して作成しました。
 - 「ログイン」「ゲストログイン」「新規登録」ボタン　※非ログイン時のみ表示されます
 - 各機能へのリンクボタン配置

![README_1](https://user-images.githubusercontent.com/88571910/165893097-78151d3c-83fb-45d6-bdf7-731e429acda5.gif)

### ②MAP表示ページ
- 聖地をピンで表示。クリックすると聖地の情報とGoogleMapへのリンクが吹き出しで表示。
- 訪れた聖地を投稿できるように、感想投稿へのリンクを設置しています。

![README_2](https://user-images.githubusercontent.com/88571910/165894108-9841cd7c-acef-4080-b942-8846686268a9.gif)

### ③聖地リストページ
- どのような聖地があるのかをリスト化しています。
- PCでは3カラム,タブレットでは2カラム,スマホでは1カラムで一覧表示します。

![README_3](https://user-images.githubusercontent.com/88571910/165899799-164ae25d-8efb-406e-bddc-16e17bb26aea.gif)

### ④聖地リスト詳細ページ
- アニメと聖地の比較画像、聖地の情報をみることができます。
- 遠方に住んでいる方向けにストリートビューを表示しています。
- リストからピンポイントで行きたい場所を選べるようにするため、GoogleMapへのリンクを設置しています。
- 聖地に対して写真付きでコメントができます。

![README_4](https://user-images.githubusercontent.com/88571910/165959501-26e5eb1c-11e7-45de-9ad7-e4d1aa3cf4fc.gif)

### ⑤感想一覧ページ
- 聖地巡礼をした方の感想をPCでは3カラム,タブレットでは2カラム,スマホでは1カラムで表示します。
- ユーザーが投稿した際、画像の登録がないとレイアウトが見づらくなってしまうため、画像の登録がない場合はデフォルト画像を表示させました。

![README_6](https://user-images.githubusercontent.com/88571910/168414258-73ffa430-d49e-45fc-aa86-88fb41c13ef6.gif)

### ⑥感想詳細ページ
- 感想に対して「いいね」「コメント」をすることができます。

![README_5](https://user-images.githubusercontent.com/88571910/166092042-0936f0d2-eb50-4aab-837b-e39370fe822c.gif)

## 使用技術
- 言語：Ruby : (2.7.3)
- フレームワーク : Ruby on Rails (6.1.4.1)
- フロントエンド : HTML/Scss/JavaScript
- DB : PostgreSQL
- インフラ : AWS（VPC・EC2・RDS・IAM・Route53）
- ソースコード管理 : GitHub
- 開発環境 : MacOS/VisualStudioCode


## 機能一覧
- MAP表示（GoogleMapsJavaScriptAPI）
- 感想投稿
    - 感想編集
    - 感想削除
    - 画像投稿（carrierwave/mini-magick）
    - いいね機能
    - コメント機能
- 聖地リスト
    - 聖地に対するコメント機能
    - 聖地に対する画像投稿機能（carrierwave/mini-magick）
    - ストリートビュー表示
- ログイン・ログアウト機能（devise）
- ユーザー登録・編集機能（devise）
- 日本語化（rails-i18n）
- エラー・フラッシュ表示機能
- レスポンシブデザイン（Bootstrap）
- 管理画面（ActiveAdmin）
- ページネーション（kaminari）
- フォーマッター（Rubocop）


## ER図
<img width="1298" alt="スクリーンショット 2022-04-30 18 43 22" src="https://user-images.githubusercontent.com/88571910/166100544-2ad8662b-95ea-4ba5-bda2-edf809bb024e.png">

## 追加予定機能

- 感想投稿のTwitterシェア
- テスト(Rspec)を記述
