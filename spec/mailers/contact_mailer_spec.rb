require "spec_helper"

describe ContactMailer do
  describe "contact_request" do
    let(:mail) { ContactMailer.contact_request }

    it "renders the headers" do
      mail.subject.should eq("Contact request")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
