# Practice_Terraform

ローカルでTerrafromを使ってみる。kindでkubernetes環境がある前提。

## 実行方法

- 検査
  - terraform validate
- 計画作成
  - terraform plan
- 適用
  - terraform apply
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

