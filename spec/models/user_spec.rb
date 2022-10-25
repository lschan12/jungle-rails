require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should have password and passwork_confirmation present' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        })
      @user.save!
      expect(@user.password).to be_present
      expect(@user.password_confirmation).to be_present
    end
    it 'should have email present' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        })
      @user.save!
      expect(@user.email).to be_present
    end
    it 'should have first name present' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        })
      @user.save!
      expect(@user.first_name).to be_present
    end
    it 'should have last name present' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        })
      @user.save!
      expect(@user.last_name).to be_present
    end
    it 'should have matching passwords in password and passwork_confirmation field' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        })
      @user.save!
      expect(@user.password).to eq(@user.password_confirmation)
    end
    it 'should have a password with minimum 4 characters' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'pass',
        password_confirmation: 'pass'
        })
      @user.save!
    end
    it 'should have a unique email' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        })
      @user.save!
      @user2 = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'test1@test.com',
        password: 'password',
        password_confirmation: 'password'
      })
      @user2.save!
    end
  end
  describe '.authenticate_with_credentials' do
    it 'should use the class method to validate the user email and password for login' do
      @user = User.new({
        first_name: 'test',
        last_name: 'name',
        email: 'TeSt@test.com',
        password: 'password',
        password_confirmation: 'password'
      })
      @user.save!
      @user2 = User.authenticate_with_credentials('   tEsT@test.com', 'password')
      expect(@user2).to eq(@user)
    end
  end
end
