 aws ec2 describe-instances \
  --filter 'Name=tag:Name,Values=api' 'Name=instance-state-name,Values=running' | \
  jq -r '.Reservations[].Instances[] | [.InstanceId, .PrivateIpAddress, .Tags[].Value] | @csv'
  
  
  aws secretsmanager get-secret-value --secret-id JoinADPasscode --region us-east-1\
  |jq -r '.SecretString'|jq -r '.ADPasscode'
