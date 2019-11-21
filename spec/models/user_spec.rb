require 'rails_helper'
describe User do
  describe '#create' do
    it "is valid with a nickname, email, encrypted_password, kanji_surname, kanji_given_name, kana_surname, kana_given_name, phone_number" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a encrypted_password" do
      user = build(:user, encrypted_password: "")
      user.valid?
      expect(user.errors[:encrypted_password]).to include("can't be blank")
    end

    it "is invalid without a kanji_surname" do
      user = build(:user, kanji_surname: "")
      user.valid?
      expect(user.errors[:kanji_surname]).to include("can't be blank")
    end

    it "is invalid without a kanji_given_name" do
      user = build(:user, kanji_given_name: "")
      user.valid?
      expect(user.errors[:kanji_given_name]).to include("can't be blank")
    end

    it "is invalid without a kana_surname" do
      user = build(:user, kana_surname: "")
      user.valid?
      expect(user.errors[:kana_surname]).to include("can't be blank")
    end

    it "is invalid without a kana_given_name" do
      user = build(:user, kana_given_name: "")
      user.valid?
      expect(user.errors[:kana_given_name]).to include("can't be blank")
    end

    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "")
      user.valid?
      expect(user.errors[:phone_number]).to include("can't be blank")
    end

    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "0000000")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a password that has less than 6 characters " do
      user = build(:user, password: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end
  end
end
