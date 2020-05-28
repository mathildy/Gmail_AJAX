class EmailsController < ApplicationController

    def index 
      @emails = Email.all
    end
  
    def new
      @emails = Email.new
    end
  
    def create
      @email = Email.create!(object:  Faker::Internet.email,
      body: Faker::Lorem.sentence(word_count: 10))
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end 
    end

  
end
