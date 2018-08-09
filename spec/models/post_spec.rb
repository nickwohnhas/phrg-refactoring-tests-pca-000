# frozen_string_literal: true

require "rails_helper"

RSpec.describe Post, type: :model do


  it "is valid" do
    expect(build(:post)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:post, title: "" )).to be_invalid
  end

  it "is invalid with too short content" do
    expect(build(:post, content: "too short")).to be_invalid
  end

  it "is invalid with a long summary" do
    expect(build(:post, summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat.")).to be_invalid
  end

  it "is invalid with a category outside the choices" do
    expect(build(:post, category: "Bravo")).to be_invalid
  end

  it "is invalid if not clickbait" do
    expect(build(:post, title: "What")).to be_invalid
  end

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end
end
