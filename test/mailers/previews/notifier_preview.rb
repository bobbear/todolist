# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier/send_open_tasks
  def send_open_tasks
    Notifier.send_open_tasks
  end

end
