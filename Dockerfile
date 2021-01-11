FROM chef/inspec
#RUN gem install 'aws-sdk-guardduty'
COPY ./aws-profile /inspec/
WORKDIR /inspec/
ENV CHEF_LICENSE "accept"
RUN inspec archive --output inspec-profile.tar.gz .
