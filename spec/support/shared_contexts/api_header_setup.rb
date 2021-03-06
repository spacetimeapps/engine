shared_context 'api header setup without a site' do
  before do
    header 'X-Locomotive-Account-Token', account.authentication_token
    header 'X-Locomotive-Account-Email', account.email
  end
end

shared_context 'api header setup' do
  before do
    header 'X-Locomotive-Account-Token', account.authentication_token
    header 'X-Locomotive-Account-Email', account.email
    header 'X-Locomotive-Site-Handle', site.handle
  end
end
