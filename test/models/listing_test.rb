require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  fixtures :listings

  test "listing attributes must not be empty" do
    listing = Listing.new
    assert listing.invalid?
    assert listing.errors[:title].any?
    assert listing.errors[:description].any?
    assert listing.errors[:image_url].any?
    assert listing.errors[:price].any?
    assert listing.errors[:location].any?
  end

  test "listing price must be positive" do
    listing  = Listing.new(title: "My Listing Title",
                           description: "gggggg",
                           image_url: "ggg.jpg",
                           location: "ggg")
    listing.price = -1
    assert listing.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      listing.errors[:price]

    listing.price = 0
    assert listing.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      listing.errors[:price]

    listing.price = 1
    assert listing.valid?
  end

  def new_listing(image_url)
    Listing.new(title: "My Listing Title",
                           description: "gggggg",
                           image_url: image_url,
                           price: 1,
                           location: "ggg")
  end

  test "iamge url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |name|
      assert new_listing(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_listing(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "listing is not valid without a unique title" do
    listing  = Listing.new(title: listings(:fishing).title,
                           description: "gggggg",
                           price: 1,
                           image_url: "ggg.jpg",
                           location: "ggg")
    assert listing.invalid?
    assert_equal ["has already been taken"], listing.errors[:title]
  end

end
