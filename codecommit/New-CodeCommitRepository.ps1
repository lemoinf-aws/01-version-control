$stackName = "codecommit-stack"
$templateBody = Get-Content -Path ./codecommit-cloudformation.yaml -Raw
$region = "us-east-1"

$stack = New-CFNStack `
  -StackName $stackName `
  -TemplateBody $templateBody `
  -Capabilities CAPABILITY_NAMED_IAM `
  -Region $region

$stack
