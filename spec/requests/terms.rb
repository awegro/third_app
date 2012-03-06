require 'spec_helper'

describe "Stuff" do
subject {page}

  describe "Sign Up page" do
  before{visit terms_path}
    it{should have_selector('h1',text: 'Bla' )}
    it{should have_selector('title',title: full_title('SignUp ') )}
  end
end
