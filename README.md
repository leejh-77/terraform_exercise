# Terraform 실습

다음의 포스트를 따라 실습  
https://www.44bits.io/ko/post/terraform_introduction_infrastrucute_as_code

## 내용
Terraform 의 기본적인 사용법 숙지  
튜툐리얼에 따라 aws key pair, security group, ec2, rds 생성 실습

## 주요 커맨드
terraform version - 버전 확인  
terraform init - 현재 선언된 provider 의 플러그인을 설치한다.  
terraform plan - 이전의 리소스와 현재 변경된 리소스를 비교하여 표시한다. add, change, destroy  
terraform apply - 정의된 리소스를 반영한다. plan 이 먼저 실행되고 yes 를 입력하면 실제 반영.  
terraform console - Terraform 에 의해 관리되는 리소스의 설정, 상태를 확인할 수 있는 console 진입  
terraform destroy - 정의된 리소스들을 전부 삭제

## 정보
- env 에 TF_VAR 을 prefix 로 변수를 선언하면 terraform variable 에 값을 매핑한다.  
- _.tfvars 파일은 variable 의 값을 저장하는 용도로 사용할 수 있다. terraform apply -var-file "_tfvars" 로 변수 파일 지정
