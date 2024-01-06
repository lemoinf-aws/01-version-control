$stackName = "cloud9-stack"
$templateBody = Get-Content -Path ./cloud9-cloudformation.yaml -Raw
$region = "us-east-1"

$stack = New-CFNStack `
  -StackName $stackName `
  -TemplateBody $templateBody `
  -Region $region

$stack
