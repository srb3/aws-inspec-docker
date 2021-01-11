title 'Enforce MFA for all accounts'

control 'aws-1' do
  impact 0.8
  title 'Enforce MFA for all accounts'
  desc  'All root accounts/users and IAM administrators must have MFA enabled on their accounts'
  describe aws_iam_users.where(has_console_password: true).where(has_mfa_enabled: false) do
    its('count') { should eq 0 }
  end
end
