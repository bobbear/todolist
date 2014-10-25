class Notifier < ActionMailer::Base
  default from: "zhangwy@vip.163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.send_open_tasks.subject
  #
  def send_open_tasks(user)
      @greeting = "Hi, " + user.name
      @unfinished_todos = Todo.where(:has_finished=>false,:user_id=>user.id)
      mail to: user.email, subject: "领主邮件提醒"
  end
end
