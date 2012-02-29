require 'spec_helper'

describe "UserPages" do
subject {page}

  describe "Sign Up page" do
  before{visit signup_path}
    it{should have_selector('h1',text: 'SignUp' )}
    it{should have_selector('title',title: full_title('SignUp') )}
  end
end
