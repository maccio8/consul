class Admin::NewslettersController < Admin::BaseController

  def index
    @newsletters = Newsletter.all
  end

  def show
    @newsletter = Newsletter.find(params[:id])
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    @newsletter.save

    redirect_to [:admin, @newsletter]
  end

  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  def update
    @newsletter = Newsletter.find(params[:id])
    @newsletter.update(newsletter_params)

    redirect_to [:admin, @newsletter]
  end

  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy

    redirect_to admin_newsletters_path, notice: "Newsletter deleted successfully"
  end

  def users
    zip = NewsletterZip.new('emails')
    zip.create
    send_file(File.join(zip.path), type: 'application/zip')
  end

  private

    def newsletter_params
      params.require(:newsletter).permit(:subject, :to, :from, :body)
    end


end