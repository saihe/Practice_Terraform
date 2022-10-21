# Practice_Terraform

ローカルで Terrafrom を使ってみる。kind で kubernetes 環境がある前提。

## ログイン API トークン

terraform cloudにある。

## 実行方法

- ログ
  - TF_LOG=debug
  - TF_LOG_PATH=./tf.log
- 検査
  - terraform validate
- 計画作成
  - terraform plan
- 適用
  - TF_LOG=debug TF_LOG_PATH=./tf.log terraform apply
- 破棄
  - terraform destroy

## 確認

- コンテキスト確認
  - kubectl config view
- コンテキスト使用
  - kubectl config use context {choose context}
- クラスタ確認
  - kubectl get clusters
- ポッド確認
  - kubectl get pods
