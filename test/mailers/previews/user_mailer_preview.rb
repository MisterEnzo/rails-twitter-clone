# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # https://learn-enough-rails-tutorial-enriquelorenzo.c9users.io/rails/mailers/user_mailer/account_activation.txt
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at
  # https://learn-enough-rails-tutorial-enriquelorenzo.c9users.io/rails/mailers/user_mailer/password_reset.txt
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end
end
