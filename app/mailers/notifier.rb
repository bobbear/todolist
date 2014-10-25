class Notifier < ActionMailer::Base
  default from: "zhangwy@vip.163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.send_open_tasks.subject
  #
  def send_open_tasks
    @greeting = "Hi"

    mail to: "zhangwy@vip.163.com"
  end
end
