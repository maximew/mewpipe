require 'spec_helper'

describe "videos/new" do
  before(:each) do
    assign(:video, stub_model(Video,
      :name => "MyString",
      :description => "MyString",
      :view => 1,
      :author => 1
    ).as_new_record)
  end

  it "renders new video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", videos_path, "post" do
      assert_select "input#video_name[name=?]", "video[name]"
      assert_select "input#video_description[name=?]", "video[description]"
      assert_select "input#video_view[name=?]", "video[view]"
      assert_select "input#video_author[name=?]", "video[author]"
    end
  end
end
