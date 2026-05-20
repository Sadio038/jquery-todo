class EmailsController < ApplicationController
  layout false, only: [:toggle_read, :show, :create, :destroy]
  before_action :set_email, only: [:show, :destroy, :toggle_read]

  def index
    @emails = Email.all.order(created_at: :desc)
  end

  def show
    @email.update(read: true)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @email = Email.create(
      object: Faker::Lorem.sentence(word_count: 5),
      body: Faker::Lorem.paragraph(sentence_count: 5)
    )
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def toggle_read
    @email.update(read: !@email.read)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  private

  def set_email
    @email = Email.find(params[:id])
  end
end

class EmailsController < ApplicationController
  layout false, only: [:toggle_read, :show, :create, :destroy]
  def index
    @emails = Email.all.order(created_at: :desc)
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
      format.html
      format.js
    end
  end
  

  def create
    @email = Email.create(
      object: Faker::Lorem.sentence(word_count: 5),
      body: Faker::Lorem.paragraph(sentence_count: 5)
    )
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end
end

def toggle_read
  @email = Email.find(params[:id])
  @email.update(read: !@email.read)
  respond_to do |format|
    format.html { redirect_to root_path }
    format.js
  end
end