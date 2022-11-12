# README

## 環境構築
```
$ bundle install
$ bin/rails db:setup
$ yarn install
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください
選択した事業側の課題
直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会主催エリアに関する検索機能が使いにくいのではないか。もくもく会会場までのアクセスが直感的に分かると良い。

提案内容
*事業課題1)サービス登録者数の内、男性60%に対して、女性は40%。一方で、サービス内のもくもく会に参加した人の比率は、男性90%：女性10%と大きな差が出ています。もっと女性が使いやすいようなサービス設計にする必要があるのではないか？
->女性の心理的安全性を考えると、他人に自分の在住地の特定をされると怖いはず。サービスで登録するのは在住県という広い範囲に止め、住所までは登録させない。
*事業課題2)直近一年間で、2回以上もくもく会に参加してくれた人は利用者全体の1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？
->もくもく会の主催地の検索機能が無いので実装する。プロフィールに在住県の欄を増やし、在住県で行われているもくもく会がトップページで出るようにする。また、県のタグを設定し、アクセス可能なもくもく会会場が絞り込めるようにする。
-->例えば平日のもくもく会の主催なら、職場から近い、あるいはリモート勤務であることも鑑みて在住地から近いと参加しやすくなる。Google Mapを表示させれば、会場までのアクセスをイメージしやすい。

実装方針
プロフィールページに在住県の登録欄を追加する。
新着イベント一覧の表示にもくもく会主催地のタグを追加する。
イベント詳細の表示にもくもく会主催地のタグの表示を追加する。
イベント登録画面とイベント詳細画面に主催地枠を追加し、Google Mapを表示させる。
ヘッダーにある検索フォームに県のタグの条件を追加する。