class ContactsController < ApplicationController
  def index
      @contact = Contact.new
    end
   
    def confirm
      @contact = Contact.new(contact_params)
      if @contact.valid?
        render :action => 'confirm'
      else
        render :action => 'index'
      end
    end

    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        ContactMailer.send_mail(@contact).deliver_now
        redirect_to done_path
      else
        render :new
      end
    end
  
    # 送信完了画面を使用する場合お使いください。
    def done
    end

    private
      def contact_params
        params.require(:contact).permit(:name, :email, :content)
      end
end