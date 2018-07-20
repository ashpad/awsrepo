# Get secrets
aws secretsmanager get-secret-value --secret-id JoinADPasscode --region us-east-1
  
# Get the password using jQ  
  aws secretsmanager get-secret-value --secret-id JoinADPasscode --region us-east-1\
  |jq -r '.SecretString'|jq -r '.ADPasscode'
